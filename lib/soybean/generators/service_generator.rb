module Soybean
  module Generators
    class ServiceGenerator
      attr_reader :path, :wsdl_location, :wsdl

      def initialize(path, wsdl, spec_dir)
        @path, @wsdl_location = path, wsdl
        @wsdl = import_wsdl
        @spec_dir = spec_dir
        @schemes = @wsdl.importedschema.keys
      end

      def schemes
        @schemes.map { |url| TypesGenerator.new(url) }
      end

      def generate
        (schemes + mappings + interface + model + specs + middleware).map do |generator|
          yield generator.fullpath(path), generator.generate, generator
        end
      end

      def mappings
        @mappings ||= schemes.map { |gen| MappingGenerator.new(gen.xsd, @wsdl) }
      end

      def interface
        @interface ||= [InterfaceGenerator.new(@wsdl)]
      end

      def model
        @model ||= [ModelGenerator.new(@wsdl)]
      end

      def middleware
        @middleware ||= model.map { |m| MiddlewareGenerator.new(m) }
      end

      def specs
        @specs ||= model.map { |m| ModelSpecGenerator.new(m, @spec_dir) }
      end

      protected

      def dirs
        @dirs ||= %w{types mappings models interfaces}.inject(HashWithIndifferentAccess.new) do |dirs, dir|
          dirs[dir.singularize] = Pathname.new @base.empty_directory(File.join(destination_dir, dir))
          dirs
        end
      end

      def import_wsdl
        WSDL::Importer.import(@wsdl_location)
      end
    end
  end
end
