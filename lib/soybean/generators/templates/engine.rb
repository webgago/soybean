module Engines
  class <%= class_name %> < Soybean::Engine
    self.service = <%= model_class_name %>.new
  end
end