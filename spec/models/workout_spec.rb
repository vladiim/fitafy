require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { create_valid_workout }

  let(:exercise)  { Object.new }
  let(:exercises) { [exercise] }

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
    before { mock(Exercise).all { exercises } }

    it "should call all exercises" do
      subject.all_exercises.should eq exercises
    end
  end

  describe "#create_workout_exercises" do
    it "should create a workout_exercise for each workout_exercise in memory" do
      pending "This is ugly as fuck"
      mock(subject).workout_exercise_memory { exercises }
      mock(subject.workout_exercises).create(exercise) { exercise }
      subject.create_workout_exercises.should eq exercises
    end
  end

  describe "#new_workout_exercise" do
    it "should create a new WorkoutExercise" do
      subject.new_workout_exercise.class.should eq WorkoutExercise
    end
  end
end