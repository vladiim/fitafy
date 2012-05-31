require 'active_record'

class Exercise < ActiveRecord::Base
  attr_accessible :categories, :description, :equipment, :name, :tips

  validates :name, :description, presence: true

  def alphabetical_order
  	exercises = group_of_exercises
  	exercises.sort! { |a, b| a.name <=> b.name }
  end

  def group_of_exercises
  	Exercise.all.limit 20
  end
end