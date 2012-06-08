require_relative '../spec_helper_lite'
require_relative '../../app/models/workout_exercise_validator'

describe WorkoutExerciseValidator do
  let(:exercises) { Object.new }
  let(:value) 	  { Object.new }
  subject 		  { WorkoutExerciseValidator.new exercises }

  def wrong_exercise_value_message
    "Wayda second! That value is wrong hombre!"
  end

  describe "initialize" do
    it "should the method: #exercises_are_right_type"
  end

  describe "#exercises_are_right_type" do

  	context "all the exercises are right" do
      # before { mock(subject).each_exercise_is_the_right_type { true } }
      it "should be true" do
      	mock(subject).each_exercise_is_the_right_type { true }
        subject.exercises_are_right_type.should be
      end
    end

    context "one of the exercises is wrong" do
      before { mock(subject).each_exercise_is_the_right_type { false } }
      it "should be false" do
      	subject.exercises_are_right_type.should_not be
      end
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

    context "value is an Integer" do
      before do
        mock(subject).value_is_an_integer?(value) { true }
      end

      it "should be true" do
        subject.check_value(value).should be
      end
    end

    context "value is an Array" do
      before do
        mock(subject).value_is_an_integer?(value) { false }
        mock(value).is_a?(Array)                  { Array }
      end
      it "should iterate through the array" do
        mock(value).each { true }
        subject.check_value(value).should be
      end
    end

    context "value is not an Integer or an Array" do
      before do
        mock(subject).value_is_an_integer?(value) { false }
        mock(value).is_a?(Array)                  { false }
      end
      it "should raise an error" do
        lambda { subject.check_value(value) }.
                should raise_error RuntimeError, 
                wrong_exercise_value_message
      end
    end
  end

  describe "#value_is_an_integer?" do

    context "value is an Integer" do
      before { mock(value).is_a?(Integer) { true } }
      it "should be true" do
        subject.value_is_an_integer?(value).should be
      end
    end

    context "value is not an Integer" do
      before { mock(value).is_a?(Integer) { false } }
      it "should not be true" do
        lambda { subject.value_is_an_integer?(value) }.
                 should raise_error RuntimeError,
                 wrong_exercise_value_message
      end
    end
  end
end