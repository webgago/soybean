module Soybean
  class Interface
    include ActiveSupport::Callbacks
    NO_ACTIONS = [:endpoint]

    class_attribute :interfaces, :instance_reader => false, :instance_writer => false

    def self.inherited(subclass)
      self.interfaces ||= []
      self.interfaces << subclass if subclass.superclass == Soybean::Interface
      Soybean.services << subclass if subclass.superclass < Soybean::Interface
    end

    def self.actions(implemented=true)
      if implemented
        self.public_instance_methods(false) - NO_ACTIONS
      else
        self::Methods.map(&:second).map(&:to_sym)
      end
    end

    attr_reader :logger

    def initialize(logger=Soybean.logger)
      @logger = logger
    end

    def endpoint
      self.class.name
    end

  end
end