class WorkoutExercise < ActiveRecord::Base

  EXERCISE_TYPE = %w(abs back biceps chest forearms legs shoulders tricep)

  attr_accessible :workout_id, :exercise_id, :sets, :notes

  belongs_to :exercise
  belongs_to :workout

  def exercise_name
  	exercise = Exercise.find exercise_id
  	exercise.name.titleize
  end
end