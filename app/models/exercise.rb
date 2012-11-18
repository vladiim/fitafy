class Exercise < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :name, :description, :tips, :muscle, :category, :equipment_id

  MUSCLES    = %w(chest back shoulders legs quadriceps glutes hamstrings calves triceps biceps forearms core full_body neck torso)
  CATEGORIES = %w(muscle plyometrics mobility stretch crossfit rehab plyometric)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true
  belongs_to :equipment

  validates_presence_of :name, :description
  validates :name, uniqueness: true
  validates :muscle,   inclusion: { in: MUSCLES },    if: :muscle?
  validates :category, inclusion: { in: CATEGORIES }, if: :category?

  friendly_id :name, use: :slugged

  def delete_exercise!
  	self.destroy
  end

  def self.alphabetical_including_muscles muscles=nil
    with_muscles(muscles).sort_by { |exercise| exercise["name"] }
  end

  def equipment_name
    self.equipment ? equipment.name : "no equipment yo"
  end

  def safe_category
    self.category ? self.category : "no category"
  end

  def safe_description
    self.description ? self.description : "no description"
  end

  def equipment_list
    Equipment.all
  end

  private

  def self.with_muscles muscles
    return Exercise.all if muscles == nil
    muscles.inject([]) do |exercises, muscle|
      exercises << Exercise.find_by_muscle(muscle)
    end
  end

  def muscle?
    true unless self.muscle.nil?
  end

  def category?
    true unless self.category.nil?
  end
end