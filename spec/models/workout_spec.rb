require_relative '../spec_helper'

include CreateArelWorkout

describe Exercise do
  subject { Exercise.new }

  def create_valid_exercise
    Exercise.new(name:  "criminology",
                 notes: "Dealin in my cypher I revolve around sciences",
    )
  end

  describe "#validations" do
    before { @workout = create_workout "cash rules" }
    context "with valid attributes" do
      it "should be valid" do
        @workout.should be_valid
      end
    end

    context "without name" do
       it "shouldn't be valid" do
         @workout.name = nil
         @workout.should_not be_valid
       end
     end

     context "without notes" do
       it "shouldn't be valid" do
         @workout.notes = nil
         @workout.should_not be_valid
       end
     end
  end
end