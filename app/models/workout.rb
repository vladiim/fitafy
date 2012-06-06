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
    errors.add :exercises, "dere is an error mon"
  end
end