module Soybean
  module Generators
    class MappingGenerator
      class_attribute :mapping_cache, :instance_reader => true, :instance_writer => true
      self.mapping_cache = Hash.new { |hash, key| hash[key] = {} }

      include BaseGenerator
      include WSDL::SOAP::ClassDefCreatorSupport

      attr_reader :name

      def initialize(schema, wsdl)
        @schema = schema
        @wsdl = wsdl
        @name = namespace.underscore
        @name_creator = WSDL::SOAP::ClassNameCreator.new
        @defined_const = {}
      end

      def dir
        'mappings'
      end

      def generate
        m = ModuleDef.new("#{@name.camelize}")

        varname = 'EncodedRegistry'
        m.def_code(encoded_creator.dump(varname))

        varname = 'LiteralRegistry'
        m.def_code(literal_creator.dump(varname))

        @defined_const.each do |ns, tag|
          m.def_const(tag, dq(ns))
        end

        registry = ModuleDef.new("Mappings", [m])

        @schema.importedschema.values.map(&:targetnamespace).map do |ns|
          registry.def_require('mappings/'+URI.parse(ns).path[1..-2].underscore)
        end

        registry.def_require(type_path)

        registry.def_code('EncodedRegistry ||= ::SOAP::Mapping::EncodedRegistry.new')
        registry.def_code('LiteralRegistry ||= ::SOAP::Mapping::LiteralRegistry.new')

        if block_given?
          yield File.join(dir, filename), registry.dump
        else
          registry.dump
        end
      end

      def literal_creator
        LiteralMappingRegistryCreator.new(@schema, @name_creator, module_name, @defined_const, mapping_cache[:literal])
      end

      def encoded_creator
        EncodedMappingRegistryCreator.new(@schema, @name_creator, module_name, @defined_const, mapping_cache[:encoded])
      end

      def name_from_namespace(ns)
        name = URI.parse(ns).path.split('/').delete_if { |part| part.empty? || part == 'type' }.last
        (name || 'base').underscore.gsub(/_service$/, '')
      end

      def namespace
        URI.parse(@schema.targetnamespace).path[1..-2]
      end

      def type_path
        "types/" + namespace.underscore
      end

      def module_name
        "::" + namespace.camelize
      end

      class ModuleDef < XSD::CodeGen::ModuleDef
        def initialize(name, modules = [])
          super(name)
          @innermodule = modules
        end

        def dump
          buf = ""
          unless @requirepath.empty?
            buf << dump_requirepath
          end
          buf << dump_emptyline unless buf.empty?
          package = @name.split(/::/)[0..-2]
          buf << dump_package_def(package) unless package.empty?
          buf << dump_comment if @comment
          buf << dump_module_def
          spacer = false
          unless @const.empty?
            buf << dump_emptyline if spacer
            spacer = true
            buf << dump_const
          end
          unless @code.empty?
            buf << dump_emptyline if spacer
            spacer = true
            buf << dump_code
          end
          unless @innermodule.empty?
            buf << dump_emptyline # always add 1 empty line
            spacer = true
            buf << dump_innermodule
          end
          unless @methoddef.empty?
            buf << dump_emptyline if spacer
            spacer = true
            buf << dump_methods
          end
          buf << dump_module_def_end
          buf << dump_package_def_end(package) unless package.empty?
          buf.gsub(/^\s+$/, '')
        end
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
end
