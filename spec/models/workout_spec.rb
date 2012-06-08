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
      before { @exercise = { id: "", sets: "", reps: "" } }

      context "with id, sets and reps" do
        it "should be true" do
          subject.exercise_keys_correct?(@exercise).should be
        end
      end

      context "without an id key" do

        it "should be false" do
          exercise = { no_said_date: "", sets: "", reps: "" }
          lambda { subject.exercise_keys_correct?(exercise) }.
                  should raise_error RuntimeError, "One o' these keys is messed up!"
        end
      end

      context "without a sets key" do

        it "should be false" do
          exercise = { id: "", no_said_date: "", reps: "" }
          lambda { subject.exercise_keys_correct?(exercise) }.
                  should raise_error RuntimeError, "One o' these keys is messed up!"
        end
      end

      context "without a reps key" do

        it "should be false" do
          exercise = { id: "", sets: "", no_said_date: "" }
          lambda { subject.exercise_keys_correct?(exercise) }.
                  should raise_error RuntimeError, "One o' these keys is messed up!"
        end
      end
    end

    describe "#exercise_value_types_correct?" do
      before do
        value = Object.new
        @exercise = [value, value, value]
        stub(value).[] { value }
        mock(@exercise).values.times(3) { value }
        mock(subject).check_value(value).times(3)
      end

      it "should iterate through each value" do
        subject.exercise_value_types_correct? @exercise
      end
    end

    describe "#check_value" do
      before { @value = Object.new }

      context "value is an Integer" do
        before do
          mock(subject).value_is_an_integer?(@value) { true }
        end

        it "should be true" do
          subject.check_value(@value).should be
        end
      end

      context "value is an Array" do
        before do
          mock(subject).value_is_an_integer?(@value) { false }
          mock(@value).is_a?(Array)                  { Array }
        end
        it "should iterate through the array" do
          mock(@value).each { true }
          subject.check_value(@value).should be
        end
      end

      context "value is not an Integer or an Array" do
        before do
          mock(subject).value_is_an_integer?(@value) { false }
          mock(@value).is_a?(Array)                  { false }
        end
        it "should raise an error" do
          lambda { subject.check_value(@value) }.
                  should raise_error RuntimeError, 
                  "Wayda second! That value is wrong hombre!"
        end
      end
    end

    # describe "#exercise_value_types_correct" do
    #   before { @exercise = { x: 1, y: 900, z: [1,209,999] } }

    #   context "with two integers and an array of integers" do
    #     it "should be true" do
    #       subject.exercise_value_types_correct?(@exercise).should be
    #     end
    #   end

    #   context "without Integers" do
    #     before do
    #       value = Object.new
    #       mock(@exercise).value_is_an_integer?(value) { false }
    #       mock(@exercise).value_is_an_array?(value) { false }
    #     end

    #     it "should be false" do
    #       subject.exercise_value_types_correct?(@exercise).
    #               should raise_error RuntimeError, 
    #               "Wayda second! That value is wrong hombre!"
    #     end
    #   end

      # context "with an incorrect value" do
      #   before do
      #     @exercises = [
      #       # first & second  value aren't Integers
      #       { x: "", y: 1, z: [1,209,999] },
      #       { x: 3, y: "", z: [1,209,999] },
      #       # third value isn't array
      #       { x: 3, y: 33, z: 999 }
      #     ]
      #   end

      #   it "should be false" do
      #     @exercises.each do |exercise|
      #       lambda { subject.exercise_value_types_correct?(exercise) }.
      #             should raise_error RuntimeError, "Wayda second! That value is wrong hombre!"
      #     end
      #   end
      # end
    # end

    describe "#value_is_an_integer?" do
      it "should be true"
    end

    describe "#value_is_an_array?" do
      it "should be true"
    end
  end
end