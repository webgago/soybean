module Soybean
  module SoapAttribute
    extend ActiveSupport::Concern

    included do
      class_attribute :attributes, :instance_reader => true, :instance_writer => true
      self.attributes = []
    end

    module ClassMethods
      def soap_attribute(*attrs)
        self.attributes += attrs
        attr_accessor *attrs
        attrs.delete_if { |s| s.to_s.underscore == s.to_s }.each do |meth|
          self.class_eval <<-RUBY
            def #{meth.to_s.underscore}
              #{meth}
            end
          RUBY
        end
      end
    end
  end
end
