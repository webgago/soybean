# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "soybean"
  gem.homepage = "http://github.com/webgago/soybean"
  gem.license = "MIT"
  gem.summary = %Q{Generate soap web-services from you wsdl. see README}
  gem.description = %Q{Generate soap web-services from you wsdl. Generate: all classes from xsd, and other.}
  gem.email = "a.sozontov@gmail.com"
  gem.authors = ["Anton Sozontov"]
  gem.executables = ['soybean']
  gem.default_executable = 'soybean'
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new