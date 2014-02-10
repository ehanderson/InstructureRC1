require 'spec_helper'

describe Assignment do
  it 'has a valid factory' do
    FactoryGirl.create(:assignment).should be_valid
  end

  it 'is invalid without a name'
end
