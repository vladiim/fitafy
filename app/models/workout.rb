class Workout < ActiveRecord::Base

  # comments on how exercises work

  attr_accessible :name, :notes, :exercises

  serialize :exercises

  validates_presence_of :name, :notes, :exercises
  validate :exercises_are_right_type

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  def exercises_are_right_type
    count_number_of_exercises
    check_exercises_length
    check_exercise_keys
    check_exercise_values
  end

  def count_number_of_exercises
  	self.exercises.count
  end
end