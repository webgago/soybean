# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{soybean}
  s.version = "2.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anton Sozontov"]
  s.date = %q{2011-09-30}
  s.default_executable = %q{soybean}
  s.description = %q{Generate soap web-services from you wsdl. Generate: all classes from xsd, and other.}
  s.email = %q{a.sozontov@gmail.com}
  s.executables = ["soybean"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/soybean",
    "lib/soybean.rb",
    "lib/soybean/complex_type.rb",
    "lib/soybean/encoded_mapping_registry_creator.rb",
    "lib/soybean/generators/base_generator.rb",
    "lib/soybean/generators/class_generator.rb",
    "lib/soybean/generators/interface_generator.rb",
    "lib/soybean/generators/mapping_generator.rb",
    "lib/soybean/generators/model_generator.rb",
    "lib/soybean/generators/model_spec_generator.rb",
    "lib/soybean/generators/service_generator.rb",
    "lib/soybean/generators/templates/model_spec.rb",
    "lib/soybean/generators/types_generator.rb",
    "lib/soybean/interface.rb",
    "lib/soybean/interface_builder.rb",
    "lib/soybean/literal_mapping_registry_creator.rb",
    "soybean.gemspec",
    "spec/soybean_spec.rb",
    "spec/spec_helper.rb",
    "vendor/soap4r/soap/attachment.rb",
    "vendor/soap4r/soap/attrproxy.rb",
    "vendor/soap4r/soap/base_data.rb",
    "vendor/soap4r/soap/element.rb",
    "vendor/soap4r/soap/encodingstyle/asp_dot_net_handler.rb",
    "vendor/soap4r/soap/encodingstyle/handler.rb",
    "vendor/soap4r/soap/encodingstyle/literal_handler.rb",
    "vendor/soap4r/soap/encodingstyle/soap_handler.rb",
    "vendor/soap4r/soap/filter.rb",
    "vendor/soap4r/soap/filter/filterchain.rb",
    "vendor/soap4r/soap/filter/handler.rb",
    "vendor/soap4r/soap/filter/streamhandler.rb",
    "vendor/soap4r/soap/generator.rb",
    "vendor/soap4r/soap/header/handler.rb",
    "vendor/soap4r/soap/header/handlerset.rb",
    "vendor/soap4r/soap/header/mappinghandler.rb",
    "vendor/soap4r/soap/header/simplehandler.rb",
    "vendor/soap4r/soap/httpconfigloader.rb",
    "vendor/soap4r/soap/mapping.rb",
    "vendor/soap4r/soap/mapping/encodedregistry.rb",
    "vendor/soap4r/soap/mapping/factory.rb",
    "vendor/soap4r/soap/mapping/literalregistry.rb",
    "vendor/soap4r/soap/mapping/mapping.rb",
    "vendor/soap4r/soap/mapping/registry.rb",
    "vendor/soap4r/soap/mapping/rubytype_factory.rb",
    "vendor/soap4r/soap/mapping/schemadefinition.rb",
    "vendor/soap4r/soap/mapping/type_map.rb",
    "vendor/soap4r/soap/mapping/wsdlencodedregistry.rb",
    "vendor/soap4r/soap/mapping/wsdlliteralregistry.rb",
    "vendor/soap4r/soap/marshal.rb",
    "vendor/soap4r/soap/mimemessage.rb",
    "vendor/soap4r/soap/nestedexception.rb",
    "vendor/soap4r/soap/net_http_client.rb",
    "vendor/soap4r/soap/ns.rb",
    "vendor/soap4r/soap/parser.rb",
    "vendor/soap4r/soap/processor.rb",
    "vendor/soap4r/soap/property.rb",
    "vendor/soap4r/soap/proxy.rb",
    "vendor/soap4r/soap/rpc/cgistub.rb",
    "vendor/soap4r/soap/rpc/driver.rb",
    "vendor/soap4r/soap/rpc/element.rb",
    "vendor/soap4r/soap/rpc/httpserver.rb",
    "vendor/soap4r/soap/rpc/method_def.rb",
    "vendor/soap4r/soap/rpc/proxy.rb",
    "vendor/soap4r/soap/rpc/router.rb",
    "vendor/soap4r/soap/rpc/rpc.rb",
    "vendor/soap4r/soap/rpc/soaplet.rb",
    "vendor/soap4r/soap/rpc/standalone_server.rb",
    "vendor/soap4r/soap/soap.rb",
    "vendor/soap4r/soap/stream_handler.rb",
    "vendor/soap4r/soap/version.rb",
    "vendor/soap4r/soap/wsdl_driver.rb",
    "vendor/soap4r/wsdl/binding.rb",
    "vendor/soap4r/wsdl/data.rb",
    "vendor/soap4r/wsdl/definitions.rb",
    "vendor/soap4r/wsdl/documentation.rb",
    "vendor/soap4r/wsdl/import.rb",
    "vendor/soap4r/wsdl/importer.rb",
    "vendor/soap4r/wsdl/info.rb",
    "vendor/soap4r/wsdl/message.rb",
    "vendor/soap4r/wsdl/operation.rb",
    "vendor/soap4r/wsdl/operation_binding.rb",
    "vendor/soap4r/wsdl/param.rb",
    "vendor/soap4r/wsdl/parser.rb",
    "vendor/soap4r/wsdl/part.rb",
    "vendor/soap4r/wsdl/port.rb",
    "vendor/soap4r/wsdl/port_type.rb",
    "vendor/soap4r/wsdl/service.rb",
    "vendor/soap4r/wsdl/soap/address.rb",
    "vendor/soap4r/wsdl/soap/binding.rb",
    "vendor/soap4r/wsdl/soap/body.rb",
    "vendor/soap4r/wsdl/soap/cgi_stub_creator.rb",
    "vendor/soap4r/wsdl/soap/class_def_creator.rb",
    "vendor/soap4r/wsdl/soap/class_def_creator_support.rb",
    "vendor/soap4r/wsdl/soap/class_name_creator.rb",
    "vendor/soap4r/wsdl/soap/client_skelton_creator.rb",
    "vendor/soap4r/wsdl/soap/complex_type.rb",
    "vendor/soap4r/wsdl/soap/data.rb",
    "vendor/soap4r/wsdl/soap/definitions.rb",
    "vendor/soap4r/wsdl/soap/driver_creator.rb",
    "vendor/soap4r/wsdl/soap/element.rb",
    "vendor/soap4r/wsdl/soap/encoded_mapping_registry_creator.rb",
    "vendor/soap4r/wsdl/soap/fault.rb",
    "vendor/soap4r/wsdl/soap/header.rb",
    "vendor/soap4r/wsdl/soap/headerfault.rb",
    "vendor/soap4r/wsdl/soap/literal_mapping_registry_creator.rb",
    "vendor/soap4r/wsdl/soap/mapping_registry_creator.rb",
    "vendor/soap4r/wsdl/soap/mapping_registry_creator_support.rb",
    "vendor/soap4r/wsdl/soap/method_def_creator.rb",
    "vendor/soap4r/wsdl/soap/operation.rb",
    "vendor/soap4r/wsdl/soap/servant_skelton_creator.rb",
    "vendor/soap4r/wsdl/soap/servlet_stub_creator.rb",
    "vendor/soap4r/wsdl/soap/standalone_server_stub_creator.rb",
    "vendor/soap4r/wsdl/soap/wsdl2ruby.rb",
    "vendor/soap4r/wsdl/types.rb",
    "vendor/soap4r/wsdl/wsdl.rb",
    "vendor/soap4r/wsdl/xml_schema/all.rb",
    "vendor/soap4r/wsdl/xml_schema/annotation.rb",
    "vendor/soap4r/wsdl/xml_schema/any.rb",
    "vendor/soap4r/wsdl/xml_schema/any_attribute.rb",
    "vendor/soap4r/wsdl/xml_schema/attribute.rb",
    "vendor/soap4r/wsdl/xml_schema/attribute_group.rb",
    "vendor/soap4r/wsdl/xml_schema/choice.rb",
    "vendor/soap4r/wsdl/xml_schema/complex_content.rb",
    "vendor/soap4r/wsdl/xml_schema/complex_extension.rb",
    "vendor/soap4r/wsdl/xml_schema/complex_restriction.rb",
    "vendor/soap4r/wsdl/xml_schema/complex_type.rb",
    "vendor/soap4r/wsdl/xml_schema/content.rb",
    "vendor/soap4r/wsdl/xml_schema/data.rb",
    "vendor/soap4r/wsdl/xml_schema/element.rb",
    "vendor/soap4r/wsdl/xml_schema/enumeration.rb",
    "vendor/soap4r/wsdl/xml_schema/fractiondigits.rb",
    "vendor/soap4r/wsdl/xml_schema/group.rb",
    "vendor/soap4r/wsdl/xml_schema/import.rb",
    "vendor/soap4r/wsdl/xml_schema/import_handler.rb",
    "vendor/soap4r/wsdl/xml_schema/importer.rb",
    "vendor/soap4r/wsdl/xml_schema/include.rb",
    "vendor/soap4r/wsdl/xml_schema/length.rb",
    "vendor/soap4r/wsdl/xml_schema/list.rb",
    "vendor/soap4r/wsdl/xml_schema/maxexclusive.rb",
    "vendor/soap4r/wsdl/xml_schema/maxinclusive.rb",
    "vendor/soap4r/wsdl/xml_schema/maxlength.rb",
    "vendor/soap4r/wsdl/xml_schema/minexclusive.rb",
    "vendor/soap4r/wsdl/xml_schema/mininclusive.rb",
    "vendor/soap4r/wsdl/xml_schema/minlength.rb",
    "vendor/soap4r/wsdl/xml_schema/parser.rb",
    "vendor/soap4r/wsdl/xml_schema/pattern.rb",
    "vendor/soap4r/wsdl/xml_schema/ref.rb",
    "vendor/soap4r/wsdl/xml_schema/schema.rb",
    "vendor/soap4r/wsdl/xml_schema/sequence.rb",
    "vendor/soap4r/wsdl/xml_schema/simple_content.rb",
    "vendor/soap4r/wsdl/xml_schema/simple_extension.rb",
    "vendor/soap4r/wsdl/xml_schema/simple_restriction.rb",
    "vendor/soap4r/wsdl/xml_schema/simple_type.rb",
    "vendor/soap4r/wsdl/xml_schema/totaldigits.rb",
    "vendor/soap4r/wsdl/xml_schema/union.rb",
    "vendor/soap4r/wsdl/xml_schema/unique.rb",
    "vendor/soap4r/wsdl/xml_schema/whitespace.rb",
    "vendor/soap4r/wsdl/xml_schema/xsd2ruby.rb",
    "vendor/soap4r/xsd/charset.rb",
    "vendor/soap4r/xsd/codegen.rb",
    "vendor/soap4r/xsd/codegen/classdef.rb",
    "vendor/soap4r/xsd/codegen/commentdef.rb",
    "vendor/soap4r/xsd/codegen/gensupport.rb",
    "vendor/soap4r/xsd/codegen/methoddef.rb",
    "vendor/soap4r/xsd/codegen/moduledef.rb",
    "vendor/soap4r/xsd/datatypes.rb",
    "vendor/soap4r/xsd/datatypes1999.rb",
    "vendor/soap4r/xsd/iconvcharset.rb",
    "vendor/soap4r/xsd/mapping.rb",
    "vendor/soap4r/xsd/namedelements.rb",
    "vendor/soap4r/xsd/ns.rb",
    "vendor/soap4r/xsd/qname.rb",
    "vendor/soap4r/xsd/xmlparser.rb",
    "vendor/soap4r/xsd/xmlparser/libxmlparser.rb",
    "vendor/soap4r/xsd/xmlparser/parser.rb",
    "vendor/soap4r/xsd/xmlparser/rexmlparser.rb",
    "vendor/soap4r/xsd/xmlparser/xmlparser.rb",
    "vendor/soap4r/xsd/xmlparser/xmlscanner.rb"
  ]
  s.homepage = %q{http://github.com/webgago/soybean}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Generate soap web-services from you wsdl. see README}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.1"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3.1"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3.1"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

