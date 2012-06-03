class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

  validates_presence_of :name, :notes

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end
end