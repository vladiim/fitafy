require_relative '../spec_helper'

include CreateArelWorkout

describe Workout do

  def create_valid_workout
    Workout.new(name:      "criminology",
                notes:     "dealin in my cypher. i revolve around sciences",
                exercises: exercises
    )
  end

  subject { create_valid_workout }

  # workout.exercises takes a serialized hash of attributes
  let(:exercises) { [{ id: 1, sets: 4, reps: [3,4,5] }, 
                    { id: 3, sets: 5, reps: [] }]
  }

  def mock_exercise_is_right_length_checks boolean_variable
    mock(subject).exercise_right_size?(exercise)        { boolean_variable }
    mock(subject).exercise_keys_correct?(exercise)        { boolean_variable }
    mock(subject).exercise_value_types_correct?(exercise) { boolean_variable }
  end

  describe "#attributes" do

    it "should titleize the name" do
      subject.titleize_name.should eq "Criminology"
    end

    it "should capitalize the notes" do
      subject.capitalize_notes.should eq "Dealin in my cypher. i revolve around sciences"
    end

    it "should accept a hash of exercise attributes" do
      subject.exercises.should eq exercises
    end
  end

  describe "#validate" do
    before { mock(subject).exercises_are_right_type { true } }

    context "with valid attributes" do
      it "should be valid" do
        subject.should be_valid
      end
    end

    context "without name" do
       it "shouldn't be valid" do
         subject.name = nil
         subject.should_not be_valid
       end
     end

     context "without notes" do
       it "shouldn't be valid" do
         subject.notes = nil
         subject.should_not be_valid
       end
     end

     context "without exercises" do
       it "should't be valid" do
         subject.exercises = nil
         subject.should_not be_valid
       end
     end
  end

  describe "#exercises_are_right_type" do

    context "one of the exercises is wrong" do
      before { mock(subject).each_exercise_is_the_right_type { false } }
      it "should not be valid" do
        subject.should_not be_valid
      end
    end

    context "all the exercises are right" do
      before { mock(subject).each_exercise_is_the_right_type { true } }
      it "should be valid" do
        subject.should be_valid
      end
    end

    describe "#each_exercise_is_the_right_type" do
      it "should check each exercise" do
        mock(subject).count_number_of_exercises { 1 }
        exercise = subject.exercises[0]
        mock(subject).exercise_is_right_type?(exercise)
        subject.each_exercise_is_the_right_type.should be
      end
    end

    describe "#count_number_of_exercises" do
      it "should return 2" do
        subject.count_number_of_exercises.should eq 2
      end
    end

    describe "#find_exercise_by_index" do
      context "with index 0" do
        it "should return the first exercise" do
          subject.find_exercise_by_index(0).should eq subject.exercises[0]
        end
      end
    end

    describe "#exercise_is_right_type?" do
      let(:exercise) { Object.new }

      context "right type" do
        before { mock_exercise_is_right_length_checks true }
        it "should return true" do
          subject.exercise_is_right_type?(exercise).should be
        end
      end

      context "not right type" do
        before { mock_exercise_is_right_length_checks false }
        it "should return false" do
          subject.exercise_is_right_type?(exercise).should_not be
        end
      end
    end

    describe "#exercise_right_size?" do
      it "should have three attributes" do
        exercise = OpenStruct.new
        mock(exercise).size { 3 }
        subject.exercise_right_size?(exercise).should be
      end
    end

    describe "#exercise_keys_correct?" do
      context "with id, sets and reps" do
        before do
          @exercise = Hash.new(id: "", sets: "", reps: "")
        end

        it "should be true" do
          subject.exercise_keys_correct?(@exercise).should be
        end
      end
    end
  end
end