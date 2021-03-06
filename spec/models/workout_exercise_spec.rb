require_relative "../spec_helper"

describe WorkoutExercise do
  subject             { build :workout_exercise }
  let(:valid_subject) { create :workout_exercise }
  let(:workout)       { build_stubbed :workout }
  let(:exercise)      { build_stubbed :exercise }

  describe "#generate_order_number" do
    let(:workout_ex) { build :workout_exercise, workout: workout,
                                                exercise: exercise }

    let(:result) { workout_ex.generate_order_number }

    context "first exercise for workout" do
      it "sets the order_number to 1" do
        mock(workout_ex).exercise_number { 0 }
        result
        workout_ex.order_number.should eq 1
      end
    end

    context "not first exercise for workout" do
      it "increments the exercise's order_number" do
        [1, 14, 440].each do |n|
          mock(workout_ex).exercise_number { n }
          workout_ex.generate_order_number
          workout_ex.order_number.should eq (n + 1)
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