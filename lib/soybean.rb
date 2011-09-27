require 'active_support/deprecation'
require 'active_support/dependencies'
ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'vendor/soap4r'))
ActiveSupport::Dependencies.autoload_paths << File.absolute_path(File.join(File.dirname(__FILE__), '..', 'lib'))

module Soybean
  # Thor actions
  module Actions
    autoload :GenerateClasses, 'soybean/actions/generate_classes'
  end
end