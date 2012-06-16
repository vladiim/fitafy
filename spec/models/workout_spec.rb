require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  let(:exercise) { Object.new }
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
    before do
      @exercises = Object.new
      mock(Exercise).all { @exercises }
    end

    it "should call all exercises" do
      subject.all_exercises.should eq @exercises
    end
  end

  describe "#save_and_create_workout_exercises" do
    it "should save itself and create_workout_exercises" do
      mock(subject).save { true }
      mock(subject).create_workout_exercises { true }
      subject.save_and_create_workout_exercises.should be
    end
  end

  describe "#new_workout_exercise" do
    it "should create a new WorkoutExercise" do
      subject.new_workout_exercise.class.should eq WorkoutExercise
    end
  end

  describe "#workout_exercise_memory" do
    it "should be an array" do
      subject.workout_exercise_memory.should eq []
    end
  end

  describe "#add_to_workout_exercise_memory" do
    before { subject.add_to_workout_exercise_memory exercise }

    it "should remember the workout exercise attributes" do
      subject.workout_exercise_memory.should eq [exercise]
    end
  end

  describe "#workout_exercise_attributes" do
    it "should iterate over each exercise and add it to the memory" do
      attr = {x: 1, y: 2}
      attrs = {"0" => attr, "1" => attr}
      mock(subject).add_to_workout_exercise_memory(attr).times 2
      subject.workout_exercise_attributes(attrs).should be
    end
  end
end