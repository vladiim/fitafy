class Exercise < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :name, :categories, :description, :equipment, :tips

  EXERCISE_TYPES = %w(abs back biceps chest forearms legs shoulders tricep)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true

  validates_presence_of :name, :description
  validates :name, uniqueness: true

  scope :alphabetical_order, -> { order :name }

  friendly_id :name, use: :slugged

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