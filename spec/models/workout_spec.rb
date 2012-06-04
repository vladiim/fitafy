require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { Workout.new }
  let(:exercises) { [{ id: 1, sets: 4, reps: [3,4,5] }, 
                    { id: 3, sets: 5, reps: [4] }]
  } # workout.exercises takes a serialized hash of attributes

  def create_valid_workout
    Workout.new(name:      "criminology",
                notes:     "dealin in my cypher. i revolve around sciences",
                exercises: exercises
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

    it "should accept a hash of exercise attributes" do
      @it.exercises.should eq exercises
    end
  end

  describe "#validations" do
    before do
      @it = create_valid_workout
      mock(@it).exercises_are_right_type { true }
    end

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

     context "without exercises" do
       it "should't be valid" do
         @it.exercises = nil
         @it.should_not be_valid
       end
     end

     context "exercises are wrong type" do
       it "souldn't be valid" do
         mock(@it).exercises_are_right_type { false }
         @it.should_not be_valid
       end
     end
  end

  describe "#count_number_of_exercises" do
    it "should return the number of exercises" do
      subject.exercises = exercises
      subject.count_number_of_exercises.should eq 2
    end
  end
end