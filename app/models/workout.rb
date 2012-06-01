class Workout < ActiveRecord::Base

  attr_accessible :name, :notes

  validates_presence_of :name, :notes
end