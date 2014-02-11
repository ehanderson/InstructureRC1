require 'spec_helper'

describe Submission do
  it 'has a valid factory' do
    FactoryGirl.create(:submission).should be_valid
  end
  it "is invalid without a grade" do
    FactoryGirl.build(:submission, grade: nil).should_not be_valid
  end

end
