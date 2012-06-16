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

  describe "#save_and_create_workout_exercises" do
    it "should save itself and create_workout_exercises" do
      mock(subject).add_workout_exercises_to_memory { true }
      mock(subject).save                            { true }
      mock(subject).create_workout_exercises        { true }
      subject.save_and_create_workout_exercises.should be
    end
  end

  describe "#create_workout_exercises" do
    it "should create a workout_exercise for each workout_exercise in memory" do
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

  describe "#workout_exercise_memory" do
    it "should be an array" do
      subject.workout_exercise_memory.should eq []
    end
  end

  describe "#add_exercise_to_workout_exercise_memory" do
    before { subject.add_exercise_to_workout_exercise_memory exercise }

    it "should remember the workout exercise attributes" do
      subject.workout_exercise_memory.should eq [exercise]
    end
  end

  describe "#add_workout_exercises_to_memory" do
    it "should iterate over each workout_exercise and add it to the memory" do
      exercise = ["0" => { x: 2 }]
      mock(subject).workout_exercises_attributes { [exercise] }
      mock(subject).add_exercise_to_workout_exercise_memory(exercise[1]) { exercises }
      subject.add_workout_exercises_to_memory.should eq [exercise]
    end
  end
end