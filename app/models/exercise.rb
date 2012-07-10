class Exercise < ActiveRecord::Base

  attr_accessible :name, :categories, :description, :equipment, :tips

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises

  validates_presence_of :name, :description

  scope :alphabetical_order, -> { order :name }

  def titleize_name
  	name.titleize
  end

  def delete_exercise!
  	self.destroy
  end

  def self.by_alphabetical_category category
    by_category(category).alphabetical_order
  end

  def self.by_category category
    where("categories ILIKE ?", "%#{category}%")
  end
end