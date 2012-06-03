require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { Workout.new }

  def create_valid_workout
    Workout.new(name:  "criminology",
                 notes: "dealin in my cypher. i revolve around sciences",
    )
  end

  describe "#attributes" do
    before { @it = create_valid_workout }
    it "should titleize the name" do
      @it.titleize_name.should eq "Criminology"
    end

    it "should capitalize the notes" do
      @it.capitalize_notes.should eq "Dealin in my cypher. i revolve around sciences"
    end
  end

  describe "#validations" do
    before { @it = create_valid_workout }
    context "with valid attributes" do
      it "should be valid" do
        @it.should be_valid
      end
    end

    context "without name" do
       it "shouldn't be valid" do
         @it.name = nil
         @it.should_not be_valid
       end
     end

     context "without notes" do
       it "shouldn't be valid" do
         @it.notes = nil
         @it.should_not be_valid
       end
     end
  end
end