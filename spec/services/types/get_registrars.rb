require 'xsd/qname'

module Types


class GetRegistrars < Soybean::ComplexType
  attr_accessor :region_code
  attr_accessor :statement_type
end

class GetRegistrarsResponse < Soybean::ComplexType
  attr_accessor :m_return
end

class ListOfRegistrars < ::Array
end


end
