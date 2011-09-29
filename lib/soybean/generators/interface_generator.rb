require 'wsdl/soap/servant_skelton_creator'

module Soybean
  module Generators
    class InterfaceGenerator
      class InterfaceCreator < WSDL::SOAP::ServantSkeltonCreator
        def mapped_class_basename(*)
          (@definitions.name.name.gsub(/Service$/, 'Interface') rescue 'BaseInterface')
        end
      end

      include BaseGenerator

      attr_reader :name

      def initialize(wsdl)
        @wsdl = wsdl
        @name = (wsdl.name.name.underscore.gsub(/_service$/, '_interface') rescue 'base_interface')
      end

      def dir
        'interfaces'
      end

      def generate
        InterfaceCreator.new(@wsdl, WSDL::SOAP::ClassNameCreator.new).dump
      end

    end
  end
end