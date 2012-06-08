require 'active_model'

class WorkoutExerciseValidator

  include ActiveModel::Validations

  EXERCISE_ATTRIBUTE_SIZE = 3
  EXERCISE_KEYS 		  = [:id, :sets, :reps]

  def initialize exercises
  	@exercises = exercises
  end

  def exercises_are_right_type
    each_exercise_is_the_right_type
  end

  def each_exercise_is_the_right_type
    exercises_number = count_number_of_exercises - 1

    # iterate through each exercise and check
    # if it has the right attributes
    (0..exercises_number).each do |n|
      exercise = find_exercise_by_index n
      exercise_is_right_type? exercise
    end
  end

  def count_number_of_exercises
    self.exercises.count
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
    exercise.size == EXERCISE_ATTRIBUTE_SIZE
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