module Soybean
  class InterfaceBuilder
    include WSDL::SOAP::ClassDefCreatorSupport
    include XSD::CodeGen::GenSupport

    attr_reader :definitions

    def initialize(definitions, name_creator, modulepath = nil)
      @definitions = definitions
      @name_creator = name_creator
      @modulepath = modulepath
      @porttype = @definitions.porttypes.first
    end

    def dump
      result = ""
      if @modulepath
        result << "\n"
        modulepath = @modulepath.respond_to?(:lines) ? @modulepath.lines : @modulepath # RubyJedi: compatible with Ruby 1.8.6 and above
        result << modulepath.collect { |ele| "module #{ele}" }.join("; ")
        result << "\n\n"
      end
      result << dump_porttype
      if @modulepath
        result << "\n\n"
        modulepath = @modulepath.respond_to?(:lines) ? @modulepath.lines : @modulepath # RubyJedi: compatible with Ruby 1.8.6 and above
        result << modulepath.collect { |ele| "end" }.join("; ")
        result << "\n"
      end
      result
    end

    def mapped_class_basename(*)
      (@definitions.name.name.gsub(/Service$/, '') rescue 'Base') + 'Interface'
    end

    def actions
      assigned_method = collect_assigned_method(@definitions, @porttype.name, @modulepath)
      binding = @porttype.find_binding
      if binding
        binding.operations.map do |op_bind|
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
          [methodname.underscore, params, operation]
        end
      else
        []
      end
    end

    private

    def dump_porttype
      class_name = mapped_class_basename(@porttype.name, @modulepath)
      c = XSD::CodeGen::ClassDef.new(class_name, 'Soybean::Interface')
      methoddef = MethodDefCreator.new(@definitions, @name_creator, @modulepath, {}).dump(@porttype.name)
      c.def_code %Q{Methods = [\n#{methoddef.gsub(/^/, "  ")}\n]}

      element_definitions = @definitions.collect_elements
      actions.each do |method_name, params, operation|
        m = XSD::CodeGen::MethodDef.new(method_name, params) do
          <<-EOD
            p [#{params.join(", ")}]
            raise NotImplementedError.new
          EOD
        end
        m.comment = dump_method_signature(method_name, operation, element_definitions)
        c.add_method(m)
      end

      c.dump
    end

    class MethodDefCreator < WSDL::SOAP::MethodDefCreator
      private
      def dump_method(mdef)
        style = mdef.style
        inputuse = mdef.inputuse
        outputuse = mdef.outputuse
        paramstr = param2str(mdef.parameters)
        if paramstr.empty?
          paramstr = '[]'
        else
          paramstr = "[ " << paramstr.split(/\r?\n/).join("\n    ") << " ]"
        end
        definitions = <<__EOD__
#{ndq(mdef.soapaction)},
  #{dq(mdef.name).underscore},
  #{paramstr},
  { :request_style =>  #{nsym(style)}, :request_use =>  #{nsym(inputuse)},
    :response_style => #{nsym(style)}, :response_use => #{nsym(outputuse)},
    :faults => #{mdef.faults.inspect} }
__EOD__
        if style == :rpc
          assign_const(mdef.qname.namespace, 'Ns')
          return <<__EOD__
[ #{dqname(mdef.qname)},
  #{definitions}]
__EOD__
        else
          return <<__EOD__
[ #{definitions}]
__EOD__
        end
      end
    end
  end
end
