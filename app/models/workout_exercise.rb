class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id, :sets, :notes

  belongs_to :exercise
  belongs_to :workout

  def exercise_name
  	exercise = Exercise.find exercise_id
  	exercise.name.titleize
  end

end