# encoding: utf-8
require 'spec_helper'

describe <%= class_name %> do

  it 'should be subclass of <%= interface_name %>' do
    <%= class_name %>.should < <%= interface_name %>
  end

  it 'should overload all interface methods (actions)' do
    <%= class_name %>.actions.should eql <%= interface_name %>.actions
  end

end