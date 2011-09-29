module Soybean
  module Generators
    class ServiceGenerator
      attr_reader :path, :wsdl_location, :wsdl

      def initialize(path, wsdl)
        @path, @wsdl_location = Pathname.new(path), wsdl
        @wsdl = import_wsdl
        @schemes = @wsdl.importedschema.keys
      end

      def schemes
        @schemes.map { |url| TypesGenerator.new(url) }
      end

      def generate
        (schemes + mappings).map do |generator|
          yield path.join(generator.dir, generator.filename), generator.generate
        end
      end

      def mappings
        schemes.map { |gen| MappingGenerator.new(gen.xsd) }
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
