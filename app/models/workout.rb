class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

  validates_presence_of :name, :notes

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

  def new_exercise
    WorkoutExercise.new
  end
end