require 'soap/mapping'

module Mappings
  EncodedRegistry ||= ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry ||= ::SOAP::Mapping::LiteralRegistry.new

  module GetRegistrars
    NsType = "http://ezags.rt.ru/rzags/GetRegistrarsService/type/"
    NsType_0 = "http://ezags.rt.ru/type/"

    EncodedRegistry.register(
      :class => Types::GetRegistrars,
      :schema_type => XSD::QName.new(NsType, "GetRegistrars"),
      :schema_element => [
        ["regionCode", ["SOAP::SOAPInt", XSD::QName.new(nil, "regionCode")]],
        ["statementType", ["Types::WebStatementType", XSD::QName.new(nil, "statementType")], [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::GetRegistrarsResponse,
      :schema_type => XSD::QName.new(NsType, "GetRegistrarsResponse"),
      :schema_element => [
        ["v_return", ["Types::ListOfRegistrars", XSD::QName.new(nil, "return")], [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfRegistrars,
      :schema_type => XSD::QName.new(NsType, "listOfRegistrars"),
      :schema_element => [
        ["item", ["Types::Registrar[]", XSD::QName.new(nil, "item")], [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::GetRegistrars,
      :schema_type => XSD::QName.new(NsType, "GetRegistrars"),
      :schema_element => [
        ["regionCode", ["SOAP::SOAPInt", XSD::QName.new(nil, "regionCode")]],
        ["statementType", ["Types::WebStatementType", XSD::QName.new(nil, "statementType")], [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::GetRegistrarsResponse,
      :schema_type => XSD::QName.new(NsType, "GetRegistrarsResponse"),
      :schema_element => [
        ["v_return", ["Types::ListOfRegistrars", XSD::QName.new(nil, "return")], [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfRegistrars,
      :schema_type => XSD::QName.new(NsType, "listOfRegistrars"),
      :schema_element => [
        ["item", ["Types::Registrar[]", XSD::QName.new(nil, "item")], [0, nil]]
      ]
    )

  end
end
