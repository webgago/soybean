module Soybean
  module Generators
    class WsdlGenerator
      include BaseGenerator

      attr_reader :name

      def initialize(wsdl)
        @wsdl = wsdl
        @name = wsdl.name.name
      end

      def dir
        'wsdl'
      end

      def filename
        "#{name}.wsdl"
      end

      def generate
        if block_given?
          yield File.join(dir, filename), dump
        else
          dump
        end
      end

      def dump
        @wsdl.to_s
      end
    end
  end
end