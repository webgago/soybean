module Soybean
  module Generators
    class EngineGenerator
      include BaseGenerator

      attr_reader :name, :model

      delegate :wsdl, :to => :model
      delegate :class_name, :interface_name, :to => :model, :prefix => true

      def initialize(model)
        @model = model
        @name = (wsdl.name.name.underscore.gsub(/service$/, '') rescue 'base') + 'engine'
      end

      def dir
        'engines'
      end

      def generate
        source = File.expand_path("../templates/engine.rb", __FILE__)
        context = instance_eval('binding')
        content = ERB.new(::File.binread(source), nil, '-').result(context)
        content
      end

      def class_name
        @name.camelize
      end

      def endpoint_path
        model_class_name
      end

    end
  end
end
