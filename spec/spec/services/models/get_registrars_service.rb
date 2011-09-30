# encoding: utf-8
require 'spec_helper'

describe GetRegistrarsService do

  it 'should be subclass of GetRegistrarsInterface' do
    GetRegistrarsService.should < GetRegistrarsInterface
  end

  it 'should overload all interface methods (actions)' do
    GetRegistrarsService.actions.should eql GetRegistrarsInterface.actions
  end

end