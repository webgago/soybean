require 'rack/builder'
require 'active_support/configurable'

module Soybean
  class Application

    attr_reader :services

    def initialize(services, &block)
      load!(services)
      configure(&block)

      logger.info "SOAP Services: START"
      at_exit{ logger.info "SOAP Services: STOP" }

      @app = Rack::Builder.new do
        Soybean.engines.each do |engine|
          engine.logger.info "Service found: #{engine.service.endpoint} route to /#{engine.service.class.name}" if engine.logger
          map "/#{engine.service.endpoint}" do
            run engine.new
          end
        end

        Soybean.engines.last.logger.info ""
      end.to_app
    end

    def call(env)
      @app.call(env)
    end

    def logger(new_logger=nil)
      @logger = new_logger unless new_logger.nil?
      @logger || Soybean.logger
    end

    protected

    def configure(&block)
      instance_eval &block

      logger.datetime_format = "%Y-%m-%d %H:%M:%S"
      logger.formatter = proc { |severity, datetime, progname, msg|
        "#{msg}\n"
      }

      Soybean.engines.each do |engine|
        engine.logger = logger
      end
    end

    def load!(path)
      $:.unshift path
      ActiveSupport::Dependencies.autoload_paths << path
      Dir["#{path}/engines/*"].each { |f| require f }
    end

  end
end