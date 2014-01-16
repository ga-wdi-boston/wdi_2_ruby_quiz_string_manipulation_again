# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require 'spec_helper'
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
describe "#sleep_in?" do
  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

#   it "returns true if vacation is true" do
#     question_1 = sleep_in?(vacation: true)
#     expect(question_1).to be(true)
#   end
end


describe "#del_del" do
  it "removes 'del' from string" do
    # assuming you're answering this on a weekday!
    expect(del_del("abdelcd")).to eq("abcd")
  end

  it "returns original string if 'del' is not present" do
    expect(del_del("xyz")).to eq ('xyz')
  end
end


# Question 3: a method called missing_char
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers/raise-error-matcher

describe "#near_hundred?" do
  it "returns true if x is between 90 and 99" do
    # assuming you're answering this on a weekday!
    expect(near_hundred?(95)).to eq true
  end

  it "returns true if x is less than or equal to 89" do
     expect(near_hundred?(2)).to eq false
  end
end


describe "#back_around" do
  it "puts the last character of the string to the beginning" do
    # assuming you're answering this on a weekday!
    expect(back_around('cat')).to eq 'tca'
    expect(back_around('hello')).to eq 'ohell'
  end
end

