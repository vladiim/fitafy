require_relative "../spec_helper"

describe WorkoutExercise do
  subject { WorkoutExercise.new }
  let(:valid_subject) { create_valid_subject }

  def create_valid_subject
  	WorkoutExercise.new(
  		workout_id: 3,
  		exercise_id: 4,
  		sets: 3,
  		rep_weight: 30,
  		rep_time: "00:00:05"
  	)
  end

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

    describe "#rep_weigth" do
      it "should be able to set and read rep_weight" do
        subject.rep_weight = [4,5,4]
        subject.rep_weight.should eq [4,5,4]
      end
    end

    describe "#rep_time" do
      it "should be able to set and read rep_time" do
        subject.rep_time = "00:00:15"
        subject.rep_time.should eq "00:00:15"
      end
    end
  end

  describe "#exercise_name" do
    it "should give the exercise name titleized" do
      mock(Exercise).find(4) { OpenStruct.new name: "rebel ins"}
      valid_subject.exercise_name.should eq "Rebel Ins"
    end
  end
end