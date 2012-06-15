class Exercise < ActiveRecord::Base

  attr_accessible :categories, :description, :equipment, :name, :tips

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  validates_presence_of :name, :description

  scope :alphabetical_order, -> { order :name }

  def delete_exercise!
  	self.destroy
  end
end