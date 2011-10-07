require 'thor'
require 'thor/actions'

class Soybean::CLI < Thor
  include Thor::Actions
  class_options :quiet => :boolean, :force => :boolean, :pretend => :boolean
  class_option :remove, :type => :boolean, :aliases => [:undo]

  map "-v" => :version


  desc "types [PATH_TO_XSD]", "Generate Ruby classes for xsd-schema from file_path.xsd"

  def types(location, destination = '.')
    Soybean::Generators::TypesGenerator.new(URI.parse(location)).generate do |filename, content|
      if options[:remove]
        remove_file File.join(destination, filename), options
      else
        create_file File.join(destination, filename), content, options
      end
    end
  end

  desc "service [PATH_TO_WSDL] [DESTINATION_DIR]", "Generate classes for WebService from WSDL"

  def service(wsdl, dir)
    Soybean::Generators::ServiceGenerator.new(dir, wsdl, spec_dir(dir)).generate do |filename, content|
      if options[:remove]
        remove_file filename, options
      else
        create_file filename, content, options
      end
    end
  end

  desc "version", "Show current version"

  def version
    puts Soybean::VERSION
  end

  no_tasks do
    def spec_dir(dir)
      default_spec_dir = "spec/#{dir}/models"
      if options[:force]
        default_spec_dir
      else
        ask("Spec directory: '#{default_spec_dir}'? ").presence || default_spec_dir
      end
    end
  end
end