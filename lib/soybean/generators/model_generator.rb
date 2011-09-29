module Soybean
  module Generators
    class ModelGenerator
      include BaseGenerator

      attr_reader :name

      def initialize(wsdl)
        @wsdl = wsdl
        @name = (wsdl.name.name.underscore rescue 'base')
      end

      def dir
        'models'
      end

      def generate
        "class %s < %sInterface\nend" % [@name.camelize, @name.camelize.gsub(/Service$/,'')]
      end

    end
  end
end