require_relative "../spec_helper"

describe WorkoutExercise do
  subject             { WorkoutExercise.new }
  let(:valid_subject) { FactoryGirl.create :workout_exercise }
  let(:workout)       { build_stubbed :workout }
  let(:exercise)      { build_stubbed :exercise }

  describe "#attributes" do
    describe "#workout_id" do
      it "should set and read the workout_id" do
        subject.workout_id = 2
        subject.workout_id.should eq 2
      end
    end

    describe "#exercise_id" do
      it "should set and read the exercise_id" do
        subject.exercise_id = 4
        subject.exercise_id.should eq 4
      end
    end

    describe "#sets" do
      it "should be able to set and read sets" do
        subject.sets = 5
        subject.sets.should eq 5
      end
    end

    describe "#instructions" do
      it "should be able to set and read instructions" do
        subject.instructions = "instructions"
        subject.instructions.should eq "instructions"
      end
    end
  end

  describe "#generate_order_number" do
    let(:workout_ex) { build :workout_exercise, workout: workout,
                                                exercise: exercise }

    let(:result) { workout_ex.generate_order_number }

    context "first exercise for workout" do
      it "sets the order to 1" do
        mock(workout_ex).exercise_number { 0 }
        result
        workout_ex.order.should eq 1
      end
    end

    context "not first exercise for workout" do
      it "increments the exercise's order" do
        [1, 14, 440].each do |n|
          mock(workout_ex).exercise_number { n }
          workout_ex.generate_order_number
          workout_ex.order.should eq (n + 1)
        end
      end
    end
  end

  describe "#exercise_number" do
    let(:workout_ex) { create :workout_exercise }
    let(:workout)    { workout_ex.workout }

    it "counts the exercises" do
      [1, 10, 345].each do |n|
        mock(workout.exercises).count { n }
        workout_ex.exercise_number.should eq n
      end
    end
  end

  describe "#safe_instructions" do
    let(:result) { subject.safe_instructions }

    context "with instructions" do
      before { mock(subject).instructions.times(2) { "INSTRUCTIONS" } }
      it "returns the instructions" do
        result.should eq "INSTRUCTIONS"
      end
    end

    context "without instructions" do
      before { mock(subject).instructions { nil } }
      it "returns a snapz message" do
        result.should eq SnapzSayz::WorkoutExerciseSpeak.no_instructions
      end
    end
  end

  describe "#find_by_exercises" do

    context "where exercise is in workout exercise" do
      let(:exercise)         { OpenStruct.new id: 1 }
      let(:exercises)        { [exercise] }
      let(:workout_exercise) { Object.new }

      before { mock(WorkoutExercise).find_by_exercise_id(exercise.id) { workout_exercise } }
  
      it "returns all workout exercises in the exercise array" do
        WorkoutExercise.find_by_exercises(exercises).should eq [workout_exercise]
      end
    end

    context "where exercise isn't in workout exercise" do
      let(:exercise_1)       { OpenStruct.new id: 1 }
      let(:exercise_2)       { OpenStruct.new id: 2 }
      let(:exercises)        { [exercise_1, exercise_2] }
      let(:workout_exercise) { Object.new }

      before do
        mock(WorkoutExercise).find_by_exercise_id(exercise_1.id) { workout_exercise }
        mock(WorkoutExercise).find_by_exercise_id(exercise_2.id) { nil }
      end
  
      it "skips over nil" do
        WorkoutExercise.find_by_exercises(exercises).should eq [workout_exercise]
      end
    end
  end

  describe "#return_workouts_from" do
    let(:workout)           { OpenStruct.new id: 1 }
    let(:workout_exercises) { [subject] }

    before { mock(Workout).find(subject.workout_id) { workout } }

    it "returns an array of workouts" do
      WorkoutExercise.return_workouts_from(workout_exercises).should eq [workout]
    end
  end

  describe "#return_workouts_from_exercises" do
    let(:exercise)  { Object.new }
    let(:exercises) { [exercise] }
    let(:workout)   { Object.new }

    before do
      mock(WorkoutExercise).find_by_exercises(exercises)     { [subject] }
      mock(WorkoutExercise).return_workouts_from([subject]) { [workout] }
    end

    it "returns an array of workouts based on the exercises passed in" do
      WorkoutExercise.return_workouts_from_exercises(exercises).should eq [workout]
    end
  end
end