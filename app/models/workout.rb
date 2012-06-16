class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

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
    save
    create_workout_exercises
  end

  def new_workout_exercise
    workout_exercises.build
  end

  def workout_exercise_memory
    @workout_exercise_memory ||= []
  end

  def add_to_workout_exercise_memory exercise
    workout_exercise_memory << exercise
  end

  # WorkoutExercises are taken as Enumerated
  # Hash. This iterates over the Hash saving the
  # exercises in the workout_exercise_memory

  def workout_exercise_attributes attrs={}
    attrs.each do |attr|
      exercise = attr[1] # first value is the enumerator
      add_to_workout_exercise_memory exercise
    end
  end
end