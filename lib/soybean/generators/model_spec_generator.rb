module Soybean
  module Generators
    class ModelSpecGenerator
      include BaseGenerator

      attr_reader :name

      # @param model [ModelGenerator]
      def initialize(model, spec_dir)
        @model, @spec_dir = model, spec_dir
        @name = model.name + '_spec'
      end

      def fullpath(basedir)
        File.join(dir, filename)
      end

      def dir
        @spec_dir
      end

      def generate
        source = File.expand_path("../templates/model_spec.rb", __FILE__)
        context = instance_eval('binding')
        content = ERB.new(::File.binread(source), nil, '-').result(context)
        content
      end

      def class_name
        @model.class_name
      end

      def interface_name
        @model.interface_name
      end

    end
  end
end
