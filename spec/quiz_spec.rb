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

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a method called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"

describe "#del_del" do
  it "deletes the string del from another string" do
    expect(del_del('deli')).to eq 'i'
  end

  it "returns the same string if it does not find del" do
    expect(del_del('xyz')).to eq 'xyz'
  end
end

# Question 3: a method called missing_char
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers/raise-error-matcher

describe "#missing_char" do
  it "removes the character corresponding to the index from the string" do
    expect(missing_char('kitten', 1)).to eq 'ktten'
  end
end

# Question 4: a method called near_hundred
  # Example Usage:
  # near_hundred(93) => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe "#near_hundred" do
  it "returns true if a number is within 10 of 100" do
    expect(near_hundred(93)).to eq true
  end

  it "returns false if a number is not within 10 of 100" do
    expect(near_hundred(52)).to eq false
  end
end
# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"

describe "#back_around" do
  it "moves the last character of a string to the beginning" do
    expect(back_around("cat")).to eq "tca"
    expect(back_around("hello")).to eq "ohell"
  end
end

