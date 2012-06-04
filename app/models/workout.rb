class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :exercises

  serialize :exercises

  validates_presence_of :name, :notes, :exercises

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end
end