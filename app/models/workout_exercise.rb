require 'active_model'

class WorkoutExercise
  include ActiveModel::Validations

  attr_accessor :workout_id, :exercise_id, :sets, :rep_weight, :rep_time

  def initialize attrs={}
  	attrs.each { |key, value| self.send"#{key}=", value }
  end

  validates_presence_of :workout_id, :exercise_id, :sets

end