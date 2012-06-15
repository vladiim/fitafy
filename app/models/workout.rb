class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  validates_presence_of :name, :notes

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  def all_exercises
    Exercise.all
  end

  def new_workout_exercise
    workout_exercises.build
  end
end