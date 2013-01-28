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
        before { mock(subject).client_level?.times(5) { true } }
        it { should ensure_inclusion_of(:client_level).in_array(Workout::CLIENT_LEVELS)}
      end

      context "false" do
        before { mock(subject).client_level?.times(5) { false } }
        it { should_not ensure_inclusion_of(:client_level).in_array(Workout::CLIENT_LEVELS)}
      end
    end

    describe "#difficulty" do
      context "true" do
        before { mock(subject).difficulty?.times(5) { true } }
        it { should ensure_inclusion_of(:difficulty).in_array(Workout::DIFFICULTY) }
      end

      context "false" do
        before { mock(subject).difficulty?.times(5) { false } }
        it { should_not ensure_inclusion_of(:difficulty).in_array(Workout::DIFFICULTY) }
      end
    end
  end

  describe "#safe_difficulty" do
    let(:result) { subject.safe_difficulty }

    context "with difficulty value" do
      it "should respond with the workout difficulty" do
        mock(subject).difficulty.times(2) { "DIFFICULTY" }
        result.should eq "DIFFICULTY"
      end
    end

    context "without difficulty value" do
      it "should respond with a snapz message" do
        mock(subject).difficulty { nil }
        result.should eq SnapzSayz::WorkoutSpeak.no_difficulty_value
      end
    end
  end

  describe "#safe_client_level" do
    let(:result) { subject.safe_client_level }

    context "with client_level value" do
      it "should respond with the workout client_level" do
        mock(subject).client_level.times(2) { "CLIENT LEVEL" }
        result.should eq "CLIENT LEVEL"
      end
    end

    context "without client_level value" do
      it "should respond with a snapz message" do
        mock(subject).client_level { nil }
        result.should eq SnapzSayz::WorkoutSpeak.no_client_level_value
      end
    end
  end

  describe "#safe_notes" do
    let(:result) { subject.safe_notes }

    context "with notes value" do
      it "should respond with the workout notes" do
        mock(subject).notes.times(2) { "NOTES" }
        result.should eq "NOTES"
      end
    end

    context "without notes value" do
      it "should respond with a snapz message" do
        mock(subject).notes { nil }
        result.should eq SnapzSayz::WorkoutSpeak.no_notes_value
      end
    end
  end

  describe "#level" do
    let(:result) { subject.level }

    context "with difficulty and client_level" do
      before do
        mock(subject).difficulty.times(2) { "DIFFICULTY" }
        mock(subject).client_level.times(2) { "CLIENT LEVEL" }
      end

      it "returns the difficulty and client_level information" do
        result.should eq "This is a DIFFICULTY workout for CLIENT LEVEL clients"
      end
    end

    context "no difficulty" do
      before { mock(subject).difficulty { nil } }

      it "returns the no levels message" do
        result.should eq SnapzSayz::WorkoutSpeak.no_level
      end
    end
  end

  describe ".filter_by_exercise_muscles" do
    context "no muslces" do
      let(:result) { Workout.filter_by_exercise_muscles }

      it "returns all the workouts" do
        result.should eq Workout.scoped
      end
    end

    context "with muscles" do
      before do
        @exercise = create :exercise, muscle: "back"
        @workout = create :workout
        create :workout_exercise, workout_id: @workout.id, exercise_id: @exercise.id
      end

      context "one muscle" do
        let(:result)   { Workout.filter_by_exercise_muscles(['back'])}

        it "returns the workouts with that muscle" do
          result.should eq [@workout]
        end
      end

      context "more than one muscle" do
        before do
          @exercise2 = create :exercise, muscle: 'chest'
          @workout2 = create :workout
          create :workout_exercise, workout_id: @workout2.id, exercise_id: @exercise2.id
          # create :workout_exercise, workout_id: @workout2.id, exercise_id: @exercise.id
        end

        let(:result) { Workout.filter_by_exercise_muscles(['back', 'chest'])}

        it "returns only the workouts with both muscles" do
          result.should include @workout
          result.should include @workout2
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
    it "returns Exercise.muscles" do
      Workout.muscles.should eq Exercise.muscles
    end
  end

  describe "#trending" do
    it "should return 4 workouts" do
      6.times { FactoryGirl.create :workout }
      Workout.trending.count.should eq 4
    end
  end

  describe "#update_exercise_order" do
    let(:ex1)    { build :workout_exercise, order_number: 5 }
    let(:ex2)    { build :workout_exercise, order_number: 10 }
    before       { mock(subject).workout_exercises { [ex1, ex2]}}

    it "iterates through the workout_exercises and updates their order" do
      subject.update_exercise_order
      ex1.order_number.should eq 1
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
end