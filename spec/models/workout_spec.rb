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

  describe "#all_exercises" do
    it "should call all exercises" do
      mock(Exercise).all { exercises }
      subject.all_exercises.should eq exercises
    end
  end

  describe "#exercises_are_right_type" do

    context "with an exercise that's the wrong size" do
      before { mock(subject).exercises { [{ id: 1, sets: 4 }] } }
      it "should raise a too short error" do
        lambda { subject.exercises_are_right_type }.
                 should raise_error,
                 "Oops, need some more attributes in this exercise!"
      end
    end

    context "with an exercise key that's the wrong type" do
      before { mock(subject).exercises { [{ id: 1, sets: 4, cuban_lynx: [3,4,5] }] } }
      it "should raise a wrong key error" do
        lambda { subject.exercises_are_right_type }.
                 should raise_error,
                 "One o' these keys is messed up!"
      end
    end

    context "with an exercise value that's the wrong type" do
      before { mock(subject).exercises { [{ id: 1, sets: 4, sets: [3,4,""] }] } }
      it "should raise a wrong value error" do
        lambda { subject.exercises_are_right_type }.
                 should raise_error,
                 "Wayda second! That value is wrong hombre!"
      end
    end
  end
end