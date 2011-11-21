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
    opts = options
    raise 'PATH_TO_WSDL should be a exists wsdl file or directory with wsdl`s' unless File.exists? wsdl
    full_path = File.expand_path wsdl, FileUtils.pwd
    if File.directory? full_path
      Dir["#{full_path}/*.wsdl"].each do |file|
        generate_service(file, dir, opts)
      end
    else
      generate_service(full_path, dir, opts)
    end
  end

  desc "version", "Show current version"
  def version
    puts Soybean::VERSION
  end

  no_tasks do
    def generate_service(wsdl, dir, options)
      Soybean.cache.clear
      Soybean::Generators::ServiceGenerator.new(dir, wsdl, spec_dir(dir)).generate do |filename, content, generator|
        opts = options
        if generator.is_a? Soybean::Generators::ModelGenerator
          opts = opts.merge(:skip => true, :force => false)
        end
        if opts[:remove]
          remove_file filename, opts
        else
          create_file filename, content, opts
        end
      end
    end

    def spec_dir(dir)
      default_spec_dir = "spec/#{dir}"
      if options[:force] || File.exists?(default_spec_dir)
        default_spec_dir
      else
        ask("Spec directory: '#{default_spec_dir}'? ").presence || default_spec_dir
      end
    end
  end
end