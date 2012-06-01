require_relative '../spec_helper'
include CreateArelExercise

describe Exercise do
  subject { Exercise.new }

  describe "#alphabetical_order" do
    before do
      @b = create_exercise "BBBB"
      @c = create_exercise "CCCC"
      @a = create_exercise "AAAA"
    end
    it "should return an exercise list in alphabetical order" do
      Exercise.alphabetical_order.should eq [@a, @b, @c]
    end
  end
end