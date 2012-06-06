class Workout < ActiveRecord::Base

  # comments on how exercises work

  attr_accessible :name, :notes, :exercises

  serialize :exercises

  validates_presence_of :name, :notes, :exercises

  validate :exercises_are_right_type

  EXERCISE_ATTRIBUTE_COUNT = 3

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  # TODO: ensure there's always an empty array for reps

  def exercises_are_right_type
    unless each_exercise_is_the_right_type
      errors.add :exercises, "dere is an error mon"
    end
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
    exercise_right_length? exercise
    exercise_keys_correct? exercise
    exercise_value_types_correct? exercise
  end
end