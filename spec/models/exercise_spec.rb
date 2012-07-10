require_relative '../spec_helper'
include CreateArelExercise

describe Exercise do
  subject { Exercise.new }
  let(:valid_subject) { create_valid_exercise }

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

  describe "#by_category" do
    let(:ab_exercises) { Object.new }
    before { mock(Exercise).where("categories ILIKE ?", "%abs%") { ab_exercises } }

    it "should return a list of exercises by category" do
      Exercise.by_category("abs").should eq ab_exercises
    end
  end

  describe "#by_alphabetical_category" do
    let(:alphabetical_abs) { Object.new }
    before do
      mock(Exercise).by_category("abs") { alphabetical_abs }
      mock(alphabetical_abs).alphabetical_order { alphabetical_abs }
    end

    it "should return the exercises by alphabetical category" do
      Exercise.by_alphabetical_category("abs").should eq alphabetical_abs
    end
  end

  describe "#validations" do
    before { @exercise = create_valid_exercise }
    context "with valid attributes" do
      it "should be valid" do
        @exercise.should be_valid
      end
    end
    context "without name" do
       it "shouldn't be valid" do
         @exercise.name = nil
         @exercise.should_not be_valid
       end
     end

     context "without description" do
       it "shouldn't be valid" do
         @exercise.description = nil
         @exercise.should_not be_valid
       end
     end
  end

  describe "#titleize_name" do
    it "should titleize the name" do
      valid_subject.titleize_name.should eq "Robert Diggs"
    end
  end
end