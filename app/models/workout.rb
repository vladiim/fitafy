class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

# Idea: ExerciseWorkout class that takes exercise_id, workout_id & details
# both Workout & Exercise need to has_many through: WorkoutExercises
# WorkoutExercises belongs_to each of the other models
# #details is a serialized hash that contains key/values of sets, reps, time etc
# * ActiveRecord::Base.store for turning column into store


  # serialize :exercises, Array
  # store :exercises, accessors: [ :exercise_id, :sets, :reps ]
  # serialize :exercises#, allow_destroy: true # maybe test for, or compare to your test for wrong attr # reject_if: lambda { |a| a[:content].blank? }

  validates_presence_of :name, :notes

  # validate :exercises_are_right_type

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