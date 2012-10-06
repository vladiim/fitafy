require_relative '../spec_helper'

describe Workout do
  subject { build :workout }

  let(:exercise)  { Object.new }
  let(:exercises) { [exercise] }

  describe "associations" do
    it { should have_many :workout_exercises }
    it { should accept_nested_attributes_for :workout_exercises }
    it { should have_many :exercises }
    it { should have_many :favorite_workouts }
    it { should have_many(:users).through(:favorite_workouts) }
  end

  describe "validate" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :name }

    describe "#client_level" do
      context "true" do
        before { mock(subject).client_level?.times(4) { true } }
        it { should ensure_inclusion_of(:client_level).in_array(Workout::CLIENT_LEVELS)}
      end

      context "false" do
        before { mock(subject).client_level?.times(4) { false } }
        it { should_not ensure_inclusion_of(:client_level).in_array(Workout::CLIENT_LEVELS)}
      end
    end

    describe "#difficulty" do
      context "true" do
        before { mock(subject).difficulty?.times(4) { true } }
        it { should ensure_inclusion_of(:difficulty).in_array(Workout::DIFFICULTY) }
      end

      context "false" do
        before { mock(subject).difficulty?.times(4) { false } }
        it { should_not ensure_inclusion_of(:difficulty).in_array(Workout::DIFFICULTY) }
      end
    end
  end

  describe "client_level?" do
    context "with client level" do
      it "is true" do
        mock(subject).client_level { "ANYTHING" }
        subject.client_level?.should eq true
      end
    end

    context "without client level" do
      it "is false" do
        mock(subject).client_level { nil }
        subject.client_level?.should eq false
      end
    end
  end

  describe "difficulty?" do
    context "with difficulty" do
      it "is true" do
        mock(subject).difficulty { "ANYTHING" }
        subject.difficulty?.should eq true
      end
    end

    context "without difficulty" do
      it "is false" do
        mock(subject).difficulty { nil }
        subject.difficulty?.should eq false
      end
    end
  end

  describe "#filter_by_tags" do
    context "with tags" do
      let(:tags)      { Object.new }
      let(:tag_type)  { Object.new }
      let(:exercises) { Object.new }
      let(:workout)   { "FILTERED WORKOUTS" }

      before do
        mock(Exercise).with_tags(tags, tag_type) { exercises }
        mock(exercises).includes(:workouts)      { [workout] }
        mock(workout).workouts                   { [workout] }
        mock(workout).to_ary # gets called before flatten
      end

      it "return a set of filtered workouts" do
        Workout.filter_by_tags(tags, tag_type) { "FILTERED WORKOUTS" }
      end
    end

    context "without tags" do
      it "returns all workouts" do
        Workout.filter_by_tags.should eq Workout.all
      end
    end
  end

  describe "#all_exercises" do
    before { mock(Exercise).scoped { exercises } }

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

  describe "#copy_workout_exercises" do
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

  describe "#equipment_names" do
    let(:equipment) { "ALL EQUIPMENT NAMES" }

    it "renders all the equipment" do
      mock(Equipment).all_names { equipment }
      Workout.equipment_names.should eq "ALL EQUIPMENT NAMES"
    end
  end
end