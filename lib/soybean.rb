require 'active_support/core_ext/string/inflections'
require 'active_support/hash_with_indifferent_access'
require 'active_support/core_ext/class'
require 'active_support/core_ext/array/grouping'
require 'active_support/deprecation'
require 'active_support/dependencies'
require 'active_support/dependencies/autoload'
require 'active_support/core_ext/module/delegation'
require 'active_support/concern'
require 'core_ext/module'

$:.unshift File.absolute_path(File.join(File.dirname(__FILE__), '..', 'vendor/soap4r'))

ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'vendor/soap4r'))
ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'lib'))

module Soybean
  extend ActiveSupport::Autoload

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__))
end