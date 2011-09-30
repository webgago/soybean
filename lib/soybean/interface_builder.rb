module Soybean
  class InterfaceBuilder
    include WSDL::SOAP::ClassDefCreatorSupport
    include XSD::CodeGen::GenSupport

    attr_reader :definitions

    def initialize(definitions, name_creator, modulepath = nil)
      @definitions = definitions
      @name_creator = name_creator
      @modulepath = modulepath
    end

    def dump(porttype = nil)
      result = ""
      if @modulepath
        result << "\n"
        modulepath = @modulepath.respond_to?(:lines) ? @modulepath.lines : @modulepath # RubyJedi: compatible with Ruby 1.8.6 and above
        result << modulepath.collect { |ele| "module #{ele}" }.join("; ")
        result << "\n\n"
      end
      if porttype.nil?
        @definitions.porttypes.each do |porttype|
          result << dump_porttype(porttype)
          result << "\n"
        end
      else
        result << dump_porttype(porttype)
      end
      if @modulepath
        result << "\n\n"
        modulepath = @modulepath.respond_to?(:lines) ? @modulepath.lines : @modulepath # RubyJedi: compatible with Ruby 1.8.6 and above
        result << modulepath.collect { |ele| "end" }.join("; ")
        result << "\n"
      end
      result
    end

    private

    def dump_porttype(porttype)
      assigned_method = collect_assigned_method(@definitions, porttype.name, @modulepath)
      class_name = mapped_class_basename(porttype.name, @modulepath)
      c = XSD::CodeGen::ClassDef.new(class_name, 'Soybean::Interface')
      element_definitions = @definitions.collect_elements
      binding = porttype.find_binding
      if binding
        binding.operations.each do |op_bind|
          operation = op_bind.find_operation
          if operation.nil?
            warn("operation not found for binding: #{op_bind}")
            next
          end
          name = assigned_method[op_bind.boundid] || operation.name
          methodname = safemethodname(name)
          input = operation.input
          params = input.find_message.parts.collect { |part|
            safevarname(part.name)
          }
          m = XSD::CodeGen::MethodDef.new(methodname, params) do
            <<-EOD
              p [#{params.join(", ")}]
              raise NotImplementedError.new
            EOD
          end
          m.comment = dump_method_signature(methodname, operation, element_definitions)
          c.add_method(m)
        end
      end
      c.dump
    end

  end
end