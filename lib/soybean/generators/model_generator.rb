module Soybean
  module Generators
    class ModelGenerator
      include BaseGenerator

      attr_reader :name

      def initialize(wsdl)
        @wsdl = wsdl
        @name = (wsdl.name.name.underscore.gsub(/service$/,'') rescue 'base') + 'service'
      end

      def dir
        'models'
      end

      def generate
        "class #{class_name} < #{interface_name}\nend"
      end

      def class_name
        @name.camelize
      end

      def interface_name
        @name.camelize.gsub(/Service$/,'Interface')
      end
    end
  end
end
