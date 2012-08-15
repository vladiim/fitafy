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

  describe "#tag_list" do
    let(:tag) { "ol dirdy bizza" }
    it "should store tags" do
      subject.tag_list = tag
      subject.save!
      subject.tags[0].name.should eq tag
    end
  end

  describe "#all_sorted" do
    let(:params)      { Object.new }
    let(:sorted_list) { Object.new }

    before do
      mock(Workout).tag_list(params) { sorted_list }
    end
    it "should return a list of workouts sorted by the variable" do
      Workout.all_sorted(params).should eq sorted_list
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