class Workout < ActiveRecord::Base

  # comments on how exercises work

  attr_accessible :name, :notes, :exercises

  serialize :exercises

  validates_presence_of :name, :notes, :exercises

  validate :exercises_are_right_type

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end
end