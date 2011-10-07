require 'wsdl/soap/servant_skelton_creator'

module Soybean
  module Generators
    class InterfaceGenerator
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
        InterfaceBuilder.new(@wsdl, WSDL::SOAP::ClassNameCreator.new, "Interfaces").dump
      end

    end
  end
end