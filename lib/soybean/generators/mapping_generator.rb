module Soybean
  module Generators
    class MappingGenerator
      class_attribute :mapping_cache, :instance_reader => true, :instance_writer => true
      self.mapping_cache = Hash.new { |hash, key| hash[key] = {} }

      include BaseGenerator
      include WSDL::SOAP::ClassDefCreatorSupport

      attr_reader :name

      def initialize(schema)
        @schema = schema
        @name = name_from_namespace(schema.targetnamespace)
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
        registry.def_require("soap/mapping")
        registry.def_code('EncodedRegistry ||= ::SOAP::Mapping::EncodedRegistry.new')
        registry.def_code('LiteralRegistry ||= ::SOAP::Mapping::LiteralRegistry.new')

        if block_given?
          yield File.join(dir, filename), registry.dump
        else
          registry.dump
        end
      end

      def literal_creator
        LiteralMappingRegistryCreator.new(@schema, @name_creator, 'Types', @defined_const, mapping_cache[:literal])
      end

      def encoded_creator
        EncodedMappingRegistryCreator.new(@schema, @name_creator, 'Types', @defined_const, mapping_cache[:encoded])
      end

      def name_from_namespace(ns)
        name = URI.parse(ns).path.split('/').delete_if { |part| part.empty? || part == 'type' }.last
        (name || 'base').underscore.gsub(/_service$/, '')
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
    end
  end
end
