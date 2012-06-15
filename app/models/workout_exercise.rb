class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id, :sets, :rep_weight, :rep_time

  validates_presence_of :workout_id, :exercise_id, :sets

end