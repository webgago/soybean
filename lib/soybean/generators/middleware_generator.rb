module Soybean
  module Generators
    class MiddlewareGenerator
      include BaseGenerator

      attr_reader :name, :model

      delegate :wsdl, :to => :model
      delegate :class_name, :interface_name, :to => :model, :prefix => true

      def initialize(model)
        @model = model
        @name = (wsdl.name.name.underscore.gsub(/service$/, '') rescue 'base') + 'middleware'
      end

      def dir
        'middlewares'
      end

      def generate
        source = File.expand_path("../templates/middleware.rb", __FILE__)
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
