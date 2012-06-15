class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :workout_exercise

  has_many :workout_exercises
  accepts_nested_attributes_for :workout_exercises
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

  # def workout_exercise attrs={}
  #   self.workout_exercises << workout_exercise.build attrs
  # end
end