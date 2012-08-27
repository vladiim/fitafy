require_relative '../spec_helper'

describe Workout do
  subject { FactoryGirl.create :workout }

  let(:exercise)  { Object.new }
  let(:exercises) { [exercise] }

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

    it { should validate_presence_of :user_id }
  end

  # describe "#with_tags" do
  #   before { 4.times { FactoryGirl.create :workout } }

  #   context "without tag varibles/s" do
  #     it "should return all the workouts" do
  #       Workout.with_tags.should eq Workout.all
  #     end
  #   end

  #   context "with exercise tags" do
  #     before do
  #       exercise = FactoryGirl.create :exercise, muscle_list: "abs"
  #       @subject = FactoryGirl.create :workout
  #       @we = FactoryGirl.create :workout_exercise, 
  #             workout_id: @subject.id, 
  #             exercise_id: exercise.id
  #     end

  #     it "should return the workout" do
  #       Workout.with_tags("abs").should eq [@subject]
  #     end
  #   end
  # end

  describe "#all_exercises" do
    before { mock(Exercise).all { exercises } }

    it "should call all exercises" do
      subject.all_exercises.should eq exercises
    end
  end

  describe "#exercises_by_tags" do
    let(:ab_exercises) { Object.new}
    before { mock(Exercise).by_alphabetical_tags("abs") { ab_exercises } }
  
    it "should order the exercises by tags" do
      Workout.exercises_by_alphabetical_tags("abs").should eq ab_exercises
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

  describe "#muscles" do
    it "should return the Exercise::MUSCLES" do
      Workout.muscles.should eq Exercise::MUSCLES
    end
  end

  describe "#trending" do
    it "should return 4 workouts" do
      6.times { FactoryGirl.create :workout }
      Workout.trending.count.should eq 4
    end
  end

  describe "#copy_wokrout_exercises" do
    let(:other_workout)     { Object.new }
    let(:workout_exercises) { OpenStruct.new(exercise_id: 2, sets: 5, notes: "") }

    before do
      mock(other_workout).workout_exercises { workout_exercises }
      mock(subject).exercises               { exercises }
    end

    it "should copy another workout's exercises" do
      subject.copy_workout_exercises(other_workout)
      subject.exercises.should eq exercises
    end
  end
end