module Soybean
  module Generators
    class TypesGenerator < WSDL::SOAP::ClassDefCreator
      class_attribute :classes_cache, :instance_reader => true, :instance_writer => true
      self.classes_cache = {}
      include BaseGenerator

      attr_reader :name

      def initialize(url)
        @name = xsd_name(url.path)
        @definitions = import_scheme(url)
        super(@definitions, WSDL::SOAP::ClassNameCreator.new, 'Types')
      end

      def xsd
        @definitions
      end

      def dir
        'types'
      end

      def generate
        if block_given?
          yield File.join(dir, filename), dump
        else
          dump
        end
      end

      def dump_simpletype(target = nil)
        @simpletypes.collect { |type|
          next if target and target != type.name
          with_cache do
            create_simpletypedef(@modulepath, type.name, type)
          end
        }.compact.join("\n")
      end

      def dump_complextype(target = nil)
        sort_dependency(@complextypes).collect { |type|
          next if target && target != type.name
          with_cache do
            create_complextypedef(@modulepath, type.name, type)
          end
        }.compact.join("\n")
      end

      protected

      def import_scheme(url)
        WSDL::XMLSchema::Importer.import(url.path)
      end

      def xsd_name(path)
        Pathname.new(path).basename('.*').to_s.underscore.gsub(/_service$/, '')
      end

      def with_cache
        result = yield
        if !classes_cache.key?(result.name) && result
          classes_cache[result.name] = true
          result.dump
        end
      end

      private

      def create_simpletypedef(mpath, qname, simpletype, qualified = false)
        if simpletype.restriction
          create_simpletypedef_restriction(mpath, qname, simpletype, qualified)
        elsif simpletype.list
          create_simpletypedef_list(mpath, qname, simpletype, qualified)
        elsif simpletype.union
          create_simpletypedef_union(mpath, qname, simpletype, qualified)
        else
          raise RuntimeError.new("unknown kind of simpletype: #{simpletype}")
        end
      end

      def create_simpletypedef_restriction(mpath, qname, typedef, qualified)
        restriction = typedef.restriction
        unless restriction.enumeration?
          # not supported.  minlength?
          return nil
        end
        classname = mapped_class_basename(qname, mpath)
        c = ClassGenerator.new(classname, '::String')
        c.comment = "#{qname}"
        define_classenum_restriction(c, classname, restriction.enumeration)
        c
      end

      def create_simpletypedef_list(mpath, qname, typedef, qualified)
        list = typedef.list
        classname = mapped_class_basename(qname, mpath)
        c = ClassGenerator.new(classname, '::Array')
        c.comment = "#{qname}"
        if simpletype = list.local_simpletype
          if simpletype.restriction.nil?
            raise RuntimeError.new(
                      "unknown kind of simpletype: #{simpletype}")
          end
          define_stringenum_restriction(c, simpletype.restriction.enumeration)
          c.comment << "\n  contains list of #{classname}::*"
        elsif list.itemtype
          c.comment << "\n  contains list of #{mapped_class_basename(list.itemtype, mpath)}::*"
        else
          raise RuntimeError.new("unknown kind of list: #{list}")
        end
        c
      end

      def create_simpletypedef_union(mpath, qname, typedef, qualified)
        union = typedef.union
        classname = mapped_class_basename(qname, mpath)
        c = ClassGenerator.new(classname, '::String')
        c.comment = "#{qname}"
        if union.member_types
          # fixme
          c.comment << "\n any of #{union.member_types}"
        end
        c
      end

      def create_simpleclassdef(mpath, qname, type_or_element)
        classname = mapped_class_basename(qname, mpath)
        c = ClassGenerator.new(classname, '::String')
        c.comment = "#{qname}"
        init_lines = []
        if type_or_element and !type_or_element.attributes.empty?
          define_attribute(c, type_or_element.attributes)
          init_lines << "@__xmlattr = {}"
        end
        c.def_method('initialize', '*arg') do
          "super\n" + init_lines.join("\n")
        end
        c
      end

      def create_complextypedef(mpath, qname, type, qualified = false)
        case type.compoundtype
          when :TYPE_STRUCT, :TYPE_EMPTY
            create_structdef(mpath, qname, type, qualified)
          when :TYPE_ARRAY
            create_arraydef(mpath, qname, type)
          when :TYPE_SIMPLE
            create_simpleclassdef(mpath, qname, type)
          when :TYPE_MAP
            # mapped as a general Hash
            nil
          else
            raise RuntimeError.new(
                      "unknown kind of complexContent: #{type.compoundtype}")
        end
      end

      def create_structdef(mpath, qname, typedef, qualified = false)
        classname = mapped_class_basename(qname, mpath)
        baseclassname = nil
        if typedef.complexcontent
          if base = typedef.complexcontent.base
            # :TYPE_ARRAY must not be derived (#424)
            basedef = @complextypes[base]
            if basedef and basedef.compoundtype != :TYPE_ARRAY
              # baseclass should be a toplevel complexType
              baseclassname = mapped_class_basename(base, @modulepath)
            end
          end
        end
        if @faulttypes and @faulttypes.index(qname)
          c = ClassGenerator.new(classname, '::StandardError')
        else
          c = ClassGenerator.new(classname, baseclassname)
        end
        c.comment = "#{qname}"
        c.comment << "\nabstract" if typedef.abstract
        parentmodule = mapped_class_name(qname, mpath)
        init_lines, init_params =
            parse_elements(c, typedef.elements, qname.namespace, parentmodule)
        unless typedef.attributes.empty?
          define_attribute(c, typedef.attributes)
          init_lines << "@__xmlattr = {}"
        end
        c.def_method('initialize', *init_params) do
          init_lines.join("\n")
        end
        c
      end

      def create_arraydef(mpath, qname, typedef)
        classname = mapped_class_basename(qname, mpath)
        c = ClassGenerator.new(classname, '::Array')
        c.comment = "#{qname}"
        parentmodule = mapped_class_name(qname, mpath)
        parse_elements(c, typedef.elements, qname.namespace, parentmodule, true)
        c
      end
    end
  end
end