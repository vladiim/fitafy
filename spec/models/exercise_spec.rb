require_relative '../spec_helper'
include CreateArelExercise

describe Exercise do
  subject { Exercise.new }

  def create_valid_exercise
    Exercise.new(name:        "robert diggs",
                 description: "rza",
                 tips:        "shine 7 in the sun",
                 categories:  "chessboxing",
                 equipment:   "phaser on stun"
    )
  end

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

  describe "#validations" do
    before { @exercise = create_valid_exercise }
    context "with name" do
       it "should be valid" do
         @exercise.name = nil
         @exercise.should_not be_valid
       end
     end
  end
end