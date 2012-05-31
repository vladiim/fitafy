require_relative '../spec_helper'

describe Exercise do

  subject { Exercise.new }

  describe "#group_of_exercises" do
  	before do
  	  @exercises = []
  	  mock(Exercise).find(:all, limit: 20) { @exercises }
  	end
    it "should limit its results to 20 exercises" do
      subject.group_of_exercises.should eq @exercises
    end
  end

  describe "#alphabetical_order" do
  	before do
  	  @b = OpenStruct.new(name: "BBBB")  	  
  	  @c = OpenStruct.new(name: "CCCC")
  	  @a = OpenStruct.new(name: "AAAA")

  	  mock(subject).group_of_exercises { [@b, @c, @a] }
  	end
    it "should return an exercise list in alphabetical order" do
      subject.alphabetical_order.should eq [@a, @b, @c]
    end
  end
end