require 'active_model'

class IntegerValidator < ActiveModel::Validator
  def validate record
  	unless record.is_a? Integer
      record.errors[:base] << "Not an Integer"
  	end
  end
end

class WorkoutExercise
  include ActiveModel::Validations
  include ActiveModel::Validations
  attr_accessor :workout_id, :exercise_id, :sets, :rep_weight, :rep_time

  def initialize attrs={}
  	attrs.each { |key, value| self.send"#{key}=", value }
  end

  validates_presence_of :workout_id

  validates_with IntegerValidator, fields: [:workout_id]
end