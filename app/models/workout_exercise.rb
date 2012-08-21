class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id, :sets, :notes

  belongs_to :exercise
  belongs_to :workout

  before_save :updates_workout_tags

  def exercise_name
  	exercise = Exercise.find exercise_id
  	exercise.name.titleize
  end

  def updates_workout_tags
    self.exercise.categories.each do |tag|
      self.workout.update_tags tag.name
    end
  end
end