require 'active_support/core_ext/string/inflections'
require 'active_support/hash_with_indifferent_access'
require 'active_support/core_ext/class'
require 'active_support/core_ext/array/grouping'
require 'active_support/deprecation'
require 'active_support/dependencies'
require 'active_support/dependencies/autoload'

ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'vendor/soap4r'))
ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'lib'))

module Soybean
  extend ActiveSupport::Autoload
end