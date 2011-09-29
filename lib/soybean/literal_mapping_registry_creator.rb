module Soybean
  class LiteralMappingRegistryCreator < WSDL::SOAP::LiteralMappingRegistryCreator

    def initialize(definitions, name_creator, modulepath, defined_const, cache)
      @cache = cache
      super(definitions, name_creator, modulepath, defined_const)
    end

    private

    def dump_entry(regname, var)
      if @cache.key?(var[:class])
        ''
      else
        @cache[var[:class]] = true
        "#{regname}.register(\n  " +
            [
                dump_entry_item(var, :class),
                dump_entry_item(var, :soap_class),
                dump_entry_item(var, :schema_name, :qname),
                dump_entry_item(var, :schema_type, :qname),
                dump_entry_item(var, :is_anonymous),
                dump_entry_item(var, :schema_basetype, :qname),
                dump_entry_item(var, :schema_qualified),
                dump_entry_item(var, :schema_element),
                dump_entry_item(var, :schema_attribute)
            ].compact.join(",\n  ") +
            "\n)\n"
      end
    end
  end
end