require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { create_valid_workout }

  def create_valid_workout
    Workout.new(name:      "criminology",
                notes:     "dealin in my cypher. i revolve around sciences",
                exercises: exercises
    )
  end

  # workout.exercises takes a serialized hash of attributes
  let(:exercises) { [{ id: 1, sets: 4, reps: [3,4,5] }, 
                    { id: 3, sets: 5, reps: [] }]
  }

  describe "#attributes" do

    it "should titleize the name" do
      subject.titleize_name.should eq "Criminology"
    end

    it "should capitalize the notes" do
      subject.capitalize_notes.should eq "Dealin in my cypher. i revolve around sciences"
    end

    it "should accept a hash of exercise attributes" do
      subject.exercises.should eq exercises
    end
  end

  describe "#validate" do
    before { mock(subject).exercises_are_right_type { true } }

    context "with valid attributes" do
      it "should be valid" do
        subject.should be_valid
      end
    end

    context "without name" do
       it "shouldn't be valid" do
         subject.name = nil
         subject.should_not be_valid
       end
     end

     context "without notes" do
       it "shouldn't be valid" do
         subject.notes = nil
         subject.should_not be_valid
       end
     end

     context "without exercises" do
       it "should't be valid" do
         subject.exercises = nil
         subject.should_not be_valid
       end
     end
  end

  describe "#exercises_are_right_type" do
    context "with an exercise that's the wrong size" do
      before { mock(subject).exercises { [{ id: 1, sets: 4 }] } }
      it "should not be valid" do
        subject.exercises_are_right_type.should_not be
      end
    end
  end
end