class Exercise < ActiveRecord::Base
  extend FriendlyId

  acts_as_taggable_on :categories, :equipment

  attr_accessible :name, :categories, :description, :equipment, :tips

  EXERCISE_TYPES = %w(abs back biceps chest forearms legs shoulders tricep)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true

  validates_presence_of :name, :description
  validates :name, uniqueness: true

  # scope :alphabetical_order, -> { order :name }

  friendly_id :name, use: :slugged

  def delete_exercise!
  	self.destroy
  end

  def self.by_alphabetical_category categories=nil
    by_category(categories).sort_by { |exercise| exercise["name"] }
  end

  def self.by_category categories=nil
    # where("categories ILIKE ?", "%#{categories}%")
    if categories
      Exercise.tagged_with(categories, on: :categories)
    else
      Exercise.all
    end
  end
end