module Soybean
  module Generators
    class ModelGenerator
      include BaseGenerator

      attr_reader :name, :wsdl

      def initialize(wsdl)
        @wsdl = wsdl
        @name = (wsdl.name.name.underscore.gsub(/service$/, '') rescue 'base') + 'service'
      end

      def dir
        ''
      end

      def generate
        @wsdl.importedschema.map do |uri, schema|
          "require 'mappings/#{URI.parse(schema.targetnamespace).path[1..-2].underscore}'\n"
        end.join +
        "class #{class_name} < #{interface_name}\nend"
      end

      def class_name
        @name.camelize
      end

      def interface_name
        "Interfaces::" + @name.camelize.gsub(/Service$/, 'Interface')
      end
    end
  end
end
