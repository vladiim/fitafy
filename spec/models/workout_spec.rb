require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { create_valid_workout }

  def create_valid_workout
    Workout.new(name:      "criminology",
                notes:     "dealin in my cypher. i revolve around sciences"
    )
  end

  describe "#attributes" do

    it "should titleize the name" do
      subject.titleize_name.should eq "Criminology"
    end

    it "should capitalize the notes" do
      subject.capitalize_notes.should eq "Dealin in my cypher. i revolve around sciences"
    end
  end

  describe "#validate" do

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
  end

  describe "#all_exercises" do
    it "should call all exercises" do
      exercises = Object.new
      mock(Exercise).all { exercises }
      subject.all_exercises.should eq exercises
    end
  end

  describe "#new_workout_exercise" do
    it "should create a new WorkoutExercise" do
      subject.new_workout_exercise.class.should eq WorkoutExercise
    end
  end

  # describe "#workout_exercise" do
  #   it "should add the workout_exercise to its workout_exercises" do
  #     attrs = Hash.new
  #     subject.workout_exercise(attrs)
  #     subject.workout_exercises.should eq [(attrs)]
  #   end
  # end
end