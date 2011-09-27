require 'active_support/core_ext/string/inflections'

module Soybean
  module Actions

    class GenerateClasses < Thor::Actions::CreateFile

      # @param base [Thor::Base] A Thor::Base instance
      # @param location [String|Pathname] Path to xsd file
      # @param destination [String|Pathname] Path to generated file with ruby classes
      # @param config [Hash] config
      # @option config [Boolean] :force Override destination file
      # @option config [Boolean] :verbose Be verbosely
      def initialize(base, location, destination, config={})
        @location = location
        super(base, "#{destination}.rb", class_definitions, config)
      end

      protected

      # @return [WSDL::SOAP::ClassDefCreator] Generate ruby classes from xsd
      def class_definitions
        @definitions ||= WSDL::SOAP::ClassDefCreator.new(xsd, WSDL::SOAP::ClassNameCreator.new).dump
      end

      # @return [WSDL::XMLSchema::Importer] Parse xsd
      def xsd
        @xsd ||= WSDL::XMLSchema::Importer.import(@location)
      end

    end
  end
end