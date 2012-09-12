require_relative "../spec_helper"

describe WorkoutExercise do
  subject             { WorkoutExercise.new }
  let(:valid_subject) { FactoryGirl.create :workout_exercise }

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

  describe "#exercise_name" do
    before { mock(Exercise).find(valid_subject.exercise_id) { OpenStruct.new name: "rebel ins"} }
    it "should give the exercise name titleized" do
      valid_subject.exercise_name.should eq "Rebel Ins"
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

  describe "#equipment_name" do
    let(:exercise)  { Object.new }

    context "exercise has equipment" do
      let(:equipment) { OpenStruct.new name: "EQUIPMENT NAME"}

      before do
        mock(subject).exercise.times(2)   { exercise }
        mock(exercise).equipment.times(2) { equipment }
      end

      it "should return the exercise's equipment name" do
        subject.equipment_name.should eq "EQUIPMENT NAME"
      end
    end

    context "exercise doesn't have equipment" do

      before do
        mock(subject).exercise   { exercise }
        mock(exercise).equipment { nil }
      end

      it "should return the exercise's equipment name" do
        subject.equipment_name.should eq "no equipment yo"
      end
    end
  end
end