$:.unshift './lib'

require 'soybean'


run Soybean::Application.new(File.expand_path('../app/services', __FILE__)) {
  logger Logger.new('soybean.log')
}
