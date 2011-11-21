module Soybean
  module ComplexType
    extend ActiveSupport::Concern

    included do
      include Soybean::SoapAttribute
    end

    module InstanceMethods
      def initialize(*args)
        hash = args.extract_options!
        if args.empty?
          init_from_hash(hash)
        else
          init_from_array(args)
        end
      end

      private

      # @param hash [Hash]
      def init_from_hash(hash)
        check_arguments_number!(hash)
        hash.each do |key, val|
          self.send key.to_sym, val
        end
      end

      # @param arry [Array]
      def init_from_array(arry)
        check_arguments_number! arry
        attributes.each_with_index do |key, i|
          self.send :"#{key}=", arry.at(i)
        end
      end

      def check_arguments_number!(args)
        if args.size != attributes.size
          raise ArgumentError, "wrong number of arguments(#{args.size} for #{attributes.size})"
        end
      end
    end

  end
end