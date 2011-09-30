# encoding: utf-8
require 'spec_helper'

describe <%= class_name %> do

  it 'should be subclass of <%= interface_name %>' do
    <%= class_name %>.should < <%= interface_name %>
  end

  it 'should overload all interface methods (actions)' do
    <%= class_name %>.actions.should eql <%= interface_name %>.actions
  end

  context 'actions' do
    <% actions.each do |action, params| %>
    it '#<%= action %> should not raise NotImplementedError' do
      expect { subject.send :<%= action %><%= params ? ', stub' * params.size : '' %> }.to_not raise_error(NotImplementedError)
    end
    <% end %>
  end

end