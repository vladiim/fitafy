require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do
  subject { create_valid_workout }

  let(:exercise)  { Object.new }
  let(:exercises) { [exercise] }

  def create_valid_workout
    Workout.new(name:         "criminology",
                notes:        "dealin in my cypher. i revolve around sciences",
                client_level: "Beginner",
                difficulty:   "Easy"
    )
  end

  def create_ar_workouts n=1
    n.times do
      workout = create_valid_workout
      workout.save!
    end
  end

  describe "#validate" do

    context "without name" do
       it "shouldn't be valid" do
         subject.name = nil
         subject.should_not be_valid
       end
     end

    context "with the right client_level" do
      before { @client_levels = %w{Beginner Regular Pro}}
      it "should be valid" do
        @client_levels.each do |client_level|
          subject.client_level = client_level
          subject.should be_valid
        end
      end
    end

    context "with the wrong/no client_level" do
      before { @client_levels = %w{blah di blah "" nil " "}}
      it "should not be valid" do
        @client_levels.each do |client_level|
          subject.client_level = client_level
          subject.should be_invalid
        end
      end
    end

    context "with the right difficulty" do
      before { @difficulty = %w{Easy Medium Hard}}
      it "should be valid" do
        @difficulty.each do |difficulty|
          subject.difficulty = difficulty
          subject.should be_valid
        end
      end
    end

    context "with the wrong/no difficulty" do
      before { @difficulty = %w{blah di blah "" nil " "}}
      it "should not be valid" do
        @difficulty.each do |difficulty|
          subject.difficulty = difficulty
          subject.should be_invalid
        end
      end
    end
  end

  describe "#all_exercises" do
    before { mock(Exercise).all { exercises } }

    it "should call all exercises" do
      subject.all_exercises.should eq exercises
    end
  end

  describe "#exercises_by_category" do
    let(:ab_exercises) { Object.new}
    before { mock(Exercise).by_alphabetical_category("abs") { ab_exercises } }
  
    it "should order the exercises by category" do
      Workout.exercises_by_alphabetical_category("abs").should eq ab_exercises
    end
  end

  describe "#new_workout_exercise" do
    it "should create a new WorkoutExercise" do
      subject.new_workout_exercise.class.should eq WorkoutExercise
    end
  end

  describe "#list_exercises" do
    it "should list all of its exercises" do
      mock(subject).workout_exercises { exercises }
      subject.list_exercises.should eq exercises
    end
  end

  describe "#w_e_set_blank?" do

    context "blank sets" do
      let(:w_e) { {'sets' => ""} }

      it "should be true" do
        subject.w_e_set_blank?(w_e).should be
      end
    end

    context "sets with a value" do
      let(:w_e) { {'sets' => '2' } }

      it "should be false" do
        subject.w_e_set_blank?(w_e).should_not be
      end
    end
  end

  describe "#exercise_count" do
    it "should return the number of exercises in the workout" do
      mock(subject.workout_exercises).count { 5 }
      subject.exercises_count.should eq 5
    end
  end

  describe "#exercise_types" do
    it "should return the Exercise EXERCISE_TYPES" do
      Workout.exercise_types.should eq Exercise::EXERCISE_TYPES
    end
  end

  describe "#trending" do
    it "should return 5 workouts" do
      create_ar_workouts 4
      Workout.trending.count.should eq 4
    end
  end
end