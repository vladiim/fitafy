require 'active_model'
require_relative '../../lib/modules/snapz_sayz'

class WorkoutExerciseValidator

  attr_reader :exercises

  include ActiveModel::Validations
  include SnapzSayz

  EXERCISE_ATTRIBUTE_SIZE = 3
  EXERCISE_KEYS 		  = [:id, :sets, :reps]

  def initialize exercises
  	@exercises = exercises
  end

  def each_exercise_is_the_right_type
    (0..EXERCISE_ATTRIBUTE_SIZE).each do |n|
      exercise = find_exercise_by_index n
      exercise_is_right_type? exercise
    end
  end

  def find_exercise_by_index index
    self.exercises[index]
  end

  def exercise_is_right_type? exercise
    exercise_right_size? exercise
    exercise_keys_correct? exercise
    exercise_value_types_correct? exercise
  end

  def exercise_right_size? exercise
    if exercise.size == EXERCISE_ATTRIBUTE_SIZE
      return true
    else
      raise SnapzSayz::ErrorSpeak.wrong_size_exercise exercise.size, EXERCISE_ATTRIBUTE_SIZE
    end
  end

  def exercise_keys_correct? exercise
    EXERCISE_KEYS.each do |key|
      unless exercise.has_key? key
        raise SnapzSayz::ErrorSpeak.wrong_workout_exercise_key
      end
    end
  end

  def exercise_value_types_correct? exercise
    last_value = EXERCISE_ATTRIBUTE_SIZE - 1
    (0..last_value).each do |n|
      value = exercise.values[n]
      check_value value
    end
  end

  def check_value value 
    if value_is_an_integer? value
      return true
    elsif value.is_a? Array
      value.each do |v|
        raise_wrong_exercise_value unless value_is_an_integer? v
      end
    else
      raise SnapzSayz::ErrorSpeak.wrong_workout_exercise_value
    end
  end

  def value_is_an_integer? value
    if value.is_a? Integer
      return true
    else
      raise_wrong_exercise_value
    end
  end

  def raise_wrong_exercise_value
    raise SnapzSayz::ErrorSpeak.wrong_workout_exercise_value
  end
end