require 'spec_helper'

describe Post do
  it "has a valid factory" do
    FactoryGirl.build(:post).should be_valid
  end

  it "is invalid without a title" do
    FactoryGirl.build(:post, title: nil).should_not be_valid
  end

  it "is invalid without a body" do
    FactoryGirl.build(:post, body: nil).should_not be_valid
  end
end
