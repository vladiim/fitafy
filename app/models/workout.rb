class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :workout_exercises_attributes

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

  def save_and_create_workout_exercises
    add_workout_exercises_to_memory
    save
    create_workout_exercises
  end

  def create_workout_exercises
    workout_exercise_memory.each do |exercise_attrs|
      workout_exercises.create exercise_attrs
    end
  end

  def new_workout_exercise
    workout_exercises.build
  end

  def workout_exercise_memory
    @workout_exercise_memory ||= []
  end

  def add_exercise_to_workout_exercise_memory exercise
    workout_exercise_memory << exercise
  end

  # WorkoutExercises are taken as Enumerated
  # Hash. This iterates over the Hash saving the
  # exercises in the workout_exercise_memory

  def add_workout_exercises_to_memory
    workout_exercises_attributes.each do |exercise_attrs|
      exercise = exercise_attrs[1] # first value is the enumerator
      add_exercise_to_workout_exercise_memory exercise
    end
  end
end