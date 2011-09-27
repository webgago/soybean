# encoding: ASCII-8BIT
# WSDL4R - XMLSchema data definitions.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


require 'xsd/datatypes'
require 'wsdl/xml_schema/annotation'
require 'wsdl/xml_schema/schema'
require 'wsdl/xml_schema/import'
require 'wsdl/xml_schema/include'
require 'wsdl/xml_schema/simple_type'
require 'wsdl/xml_schema/simple_restriction'
require 'wsdl/xml_schema/simple_extension'
require 'wsdl/xml_schema/complex_type'
require 'wsdl/xml_schema/complex_content'
require 'wsdl/xml_schema/complex_restriction'
require 'wsdl/xml_schema/complex_extension'
require 'wsdl/xml_schema/simple_content'
require 'wsdl/xml_schema/any'
require 'wsdl/xml_schema/any_attribute'
require 'wsdl/xml_schema/element'
require 'wsdl/xml_schema/all'
require 'wsdl/xml_schema/choice'
require 'wsdl/xml_schema/sequence'
require 'wsdl/xml_schema/list'
require 'wsdl/xml_schema/attribute'
require 'wsdl/xml_schema/union'
require 'wsdl/xml_schema/unique'
require 'wsdl/xml_schema/group'
require 'wsdl/xml_schema/attribute_group'

require 'wsdl/xml_schema/length'
require 'wsdl/xml_schema/minlength'
require 'wsdl/xml_schema/maxlength'
require 'wsdl/xml_schema/pattern'
require 'wsdl/xml_schema/enumeration'
require 'wsdl/xml_schema/whitespace'
require 'wsdl/xml_schema/maxinclusive'
require 'wsdl/xml_schema/maxexclusive'
require 'wsdl/xml_schema/minexclusive'
require 'wsdl/xml_schema/mininclusive'
require 'wsdl/xml_schema/totaldigits'
require 'wsdl/xml_schema/fractiondigits'

module WSDL
module XMLSchema


AllName = XSD::QName.new(XSD::Namespace, 'all')
AnnotationName = XSD::QName.new(XSD::Namespace, 'annotation')
AnyName = XSD::QName.new(XSD::Namespace, 'any')
AnyAttributeName = XSD::QName.new(XSD::Namespace, 'anyAttribute')
AttributeName = XSD::QName.new(XSD::Namespace, 'attribute')
AttributeGroupName = XSD::QName.new(XSD::Namespace, 'attributeGroup')
ChoiceName = XSD::QName.new(XSD::Namespace, 'choice')
ComplexContentName = XSD::QName.new(XSD::Namespace, 'complexContent')
ComplexTypeName = XSD::QName.new(XSD::Namespace, 'complexType')
ElementName = XSD::QName.new(XSD::Namespace, 'element')
ExtensionName = XSD::QName.new(XSD::Namespace, 'extension')
GroupName = XSD::QName.new(XSD::Namespace, 'group')
ImportName = XSD::QName.new(XSD::Namespace, 'import')
IncludeName = XSD::QName.new(XSD::Namespace, 'include')
ListName = XSD::QName.new(XSD::Namespace, 'list')
RestrictionName = XSD::QName.new(XSD::Namespace, 'restriction')
SequenceName = XSD::QName.new(XSD::Namespace, 'sequence')
SchemaName = XSD::QName.new(XSD::Namespace, 'schema')
SimpleContentName = XSD::QName.new(XSD::Namespace, 'simpleContent')
SimpleTypeName = XSD::QName.new(XSD::Namespace, 'simpleType')
UnionName = XSD::QName.new(XSD::Namespace, 'union')
UniqueName = XSD::QName.new(XSD::Namespace, 'unique')

LengthName = XSD::QName.new(XSD::Namespace, 'length')
MinLengthName = XSD::QName.new(XSD::Namespace, 'minLength')
MaxLengthName = XSD::QName.new(XSD::Namespace, 'maxLength')
PatternName = XSD::QName.new(XSD::Namespace, 'pattern')
EnumerationName = XSD::QName.new(XSD::Namespace, 'enumeration')
WhiteSpaceName = XSD::QName.new(XSD::Namespace, 'whiteSpace')
MaxInclusiveName = XSD::QName.new(XSD::Namespace, 'maxInclusive')
MaxExclusiveName = XSD::QName.new(XSD::Namespace, 'maxExclusive')
MinExclusiveName = XSD::QName.new(XSD::Namespace, 'minExclusive')
MinInclusiveName = XSD::QName.new(XSD::Namespace, 'minInclusive')
TotalDigitsName = XSD::QName.new(XSD::Namespace, 'totalDigits')
FractionDigitsName = XSD::QName.new(XSD::Namespace, 'fractionDigits')

AbstractAttrName = XSD::QName.new(nil, 'abstract')
AttributeFormDefaultAttrName = XSD::QName.new(nil, 'attributeFormDefault')
BaseAttrName = XSD::QName.new(nil, 'base')
DefaultAttrName = XSD::QName.new(nil, 'default')
ElementFormDefaultAttrName = XSD::QName.new(nil, 'elementFormDefault')
FinalAttrName = XSD::QName.new(nil, 'final')
FixedAttrName = XSD::QName.new(nil, 'fixed')
FormAttrName = XSD::QName.new(nil, 'form')
IdAttrName = XSD::QName.new(nil, 'id')
ItemTypeAttrName = XSD::QName.new(nil, 'itemType')
MaxOccursAttrName = XSD::QName.new(nil, 'maxOccurs')
MemberTypesAttrName = XSD::QName.new(nil, 'memberTypes')
MinOccursAttrName = XSD::QName.new(nil, 'minOccurs')
MixedAttrName = XSD::QName.new(nil, 'mixed')
NameAttrName = XSD::QName.new(nil, 'name')
NamespaceAttrName = XSD::QName.new(nil, 'namespace')
NillableAttrName = XSD::QName.new(nil, 'nillable')
ProcessContentsAttrName = XSD::QName.new(nil, 'processContents')
RefAttrName = XSD::QName.new(nil, 'ref')
SchemaLocationAttrName = XSD::QName.new(nil, 'schemaLocation')
TargetNamespaceAttrName = XSD::QName.new(nil, 'targetNamespace')
TypeAttrName = XSD::QName.new(nil, 'type')
UseAttrName = XSD::QName.new(nil, 'use')
ValueAttrName = XSD::QName.new(nil, 'value')
VersionAttrName = XSD::QName.new(nil, 'version')


end
end
