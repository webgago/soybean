module Soybean
  module Generators
    class ClassGenerator < XSD::CodeGen::ClassDef

      def def_attr(attrname, writable = true, varname = nil)
        unless safevarname?(varname || attrname)
          raise ArgumentError.new("#{varname || attrname} seems to be unsafe")
        end
        @attrdef << [attrname.underscore, writable, varname.underscore]
      end

      def def_classvar(var, value)
        var = var.sub(/\A@@/, "")
        unless safevarname?(var)
          raise ArgumentError.new("#{var} seems to be unsafe")
        end
        @classvar << [var.underscore, value]
      end

      def def_method(name, *params)
        return if name == 'initialize'
        super name.underscore, *params.map(&:underscore)
      end

      def dump
        buf = ""
        unless @requirepath.empty?
          buf << dump_requirepath
        end
        buf << dump_emptyline unless buf.empty?
        package = @name.split(/::/)[0..-2]
        buf << dump_package_def(package) unless package.empty?
        #buf << dump_comment if @comment
        buf << dump_class_def
        spacer = false
        unless @classvar.empty?
          spacer = true
          buf << dump_classvar
        end
        unless @const.empty?
          buf << dump_emptyline if spacer
          spacer = true
          buf << dump_const
        end
        unless @innermodule.empty?
          buf << dump_emptyline # always add 1 empty line
          spacer = true
          buf << dump_innermodule
        end
        unless @code.empty?
          buf << dump_emptyline if spacer
          spacer = true
          buf << dump_code
        end
        unless @attrdef.empty?
          buf << dump_emptyline if spacer
          spacer = true
          buf << dump_attributes
        end
        buf << accessors
        unless @methoddef.empty?
          buf << dump_emptyline if spacer
          spacer = true
          buf << dump_methods
        end
        buf << dump_class_def_end
        buf << dump_package_def_end(package) unless package.empty?
        buf.gsub(/^\s+$/, '')
      end

      private

      def dump_class_def
        name = @name.to_s.split(/::/)
        if @baseclass
          "class #{name.last} < #{@baseclass}\n"
        else
          "class #{name.last} < Soybean::ComplexType\n"
        end
      end

      def accessors
        @attrdef.map do |attrname, *|
          format("attr_accessor #{attrname.to_sym.inspect}\n", 2)
        end.join
      end

      def dump_attribute(attrname, writable, varname)
        ""
      end

      def dump_attributes
        ""
      end

    end
  end
end


