class Exercise < ActiveRecord::Base
  extend FriendlyId

  acts_as_taggable_on :muscles, :equipment

  attr_accessible :name, :description, :tips, :muscle_list, :equipment_list

  MUSCLES = %w(abs back biceps chest forearms legs shoulders tricep)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true

  validates_presence_of :name, :description
  validates :name, uniqueness: true

  friendly_id :name, use: :slugged

  def delete_exercise!
  	self.destroy
  end

  def self.by_alphabetical_tags tags=nil
    with_tags(tags).sort_by { |exercise| exercise["name"] }
  end

  def self.with_tags tags=nil
    if tags
      Exercise.tagged_with(tags, on: :muscles)
    else
      Exercise.all
    end
  end
end