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
    checker = WorkoutExerciseValidator.new self.exercises
    checker.each_exercise_is_the_right_type
  end

  def all_exercises
    Exercise.all
  end
end