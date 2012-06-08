require_relative '../spec_helper_lite'
require_relative '../../app/models/workout_exercise_validator'

describe WorkoutExerciseValidator do
  let(:exercises) { Object.new }
  subject 		  { WorkoutExerciseValidator.new exercises }
  let(:value) 	  { Object.new }
  let(:exercise)  { Object.new }

  def wrong_exercise_value_message
    "Wayda second! That value is wrong hombre!"
  end


  describe "initialize" do
  	it "should be able to read its own exercises" do
  	  subject.exercises.should eq exercises
  	end

    it "should the method: #exercises_are_right_type" do
      subject.should be
    end
  end

  describe "#each_exercise_is_the_right_type" do
  	before do
  	  (0..3).each do |n|
        mock(subject).find_exercise_by_index(n) { exercise }
        mock(subject).exercise_is_right_type?(exercise)
      end
  	end

    it "should check each exercise" do
      subject.each_exercise_is_the_right_type.should be
    end
  end

  describe "#find_exercise_by_index" do
    context "with index 0" do
      before { mock(subject).exercises { [exercise] } }
      it "should return the first exercise" do
        subject.find_exercise_by_index(0).should eq exercise
      end
    end
  end

  describe "#exercise_is_right_type?" do
    def mock_exercise_is_right_type_checks boolean_variable
      mock(subject).exercise_right_size?(exercise)          { boolean_variable }
      mock(subject).exercise_keys_correct?(exercise)        { boolean_variable }
      mock(subject).exercise_value_types_correct?(exercise) { boolean_variable }
    end

    context "right type" do
      before { mock_exercise_is_right_type_checks true }
      it "should return true" do
        subject.exercise_is_right_type?(exercise).should be
      end
    end

    context "not right type" do
      before { mock_exercise_is_right_type_checks false }
      it "should return false" do
        subject.exercise_is_right_type?(exercise).should_not be
      end
    end
  end

  describe "#exercise_right_size?" do
  	context "right size" do
      it "should have three attributes" do
        mock(exercise).size { 3 }
        subject.exercise_right_size?(exercise).should be
      end
  	end

    context "too short" do
      it "should raise a too short error" do
        mock(exercise).size.times(2) { 2 }
        lambda { subject.exercise_right_size?(exercise) }.
        		 should raise_error,
        		 "Oops, need some more attributes in this exercise!"
      end
    end

    context "too long" do
      it "should raise a too long error" do
        mock(exercise).size.times(2) { 4 }
        lambda { subject.exercise_right_size?(exercise) }.
        		 should raise_error,
        		 "This exercise is too long yo!"
      end
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
        @exercise = { no_said_date: "", sets: "", reps: "" }
        lambda { subject.exercise_keys_correct? @exercise }.
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