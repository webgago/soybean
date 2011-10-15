module Soybean
  class Interface
    class_attribute :interfaces, :instance_reader => false, :instance_writer => false

    def self.inherited(subclass)
      self.interfaces ||= []
      self.interfaces << subclass if subclass.superclass == Soybean::Interface
      Soybean.services << subclass if subclass.superclass < Soybean::Interface
    end

    def self.actions
      self.instance_methods - Object.instance_methods
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