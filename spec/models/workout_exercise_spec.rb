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

    describe "#notes" do
      it "should be able to set and read notes" do
        subject.notes = "notes"
        subject.notes.should eq "notes"
      end
    end
  end

  describe "#exercise_name" do
    before { mock(Exercise).find(valid_subject.exercise_id) { OpenStruct.new name: "rebel ins"} }
    it "should give the exercise name titleized" do
      valid_subject.exercise_name.should eq "Rebel Ins"
    end
  end
end