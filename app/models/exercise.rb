class Exercise < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :name,   :description, :tips, 
                  :muscle, :category,    :equipment_id

  MUSCLES    = %w(chest back shoulders legs quadriceps 
                  glutes calves triceps biceps
                  forearms core full_body torso)

  CATEGORIES = %w(muscle plyometrics mobility stretch
                  crossfit rehab plyometric)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true
  belongs_to :equipment

  validates_presence_of :name, :description
  validates :name,      uniqueness: true
  validates :muscle,    inclusion: { in: MUSCLES },    if: :muscle?
  validates :category,  inclusion: { in: CATEGORIES }, if: :category?

  friendly_id :name, use: :slugged

  default_scope order("name ASC")
  scope :by_muscle, lambda { |m| Exercise.where{ muscle.like(m) } }

  def delete_exercise!
  	self.destroy
  end

  def self.filter_by_muscle(muscle=nil)
    return Exercise.scoped.limit(10) if muscle == nil
    Exercise.by_muscle(muscle)
  end

  def self.index_title(muscle=nil)
    return 'All Exercises' if muscle == nil
    "#{muscle.titleize} Exercises"
  end

  def self.muscles
    muscles = MUSCLES.sort { |a, b| a <=> b }
    muscles.each { |m| m.gsub!('_', ' ') }
  end

  def equipment_name
    equipment && equipment.name ? equipment.name : "no equipment yo"
  end

  # def safe_description
  #   self.description ? self.description : "no description"
  # end

  # def safe_category
  #   self.category ? self.category : "no category"
  # end

  def equipment_list
    Equipment.all
  end

  def products
    equipment.random_products if equipment
  end

  private

  def muscle?
    true unless self.muscle.nil?
  end

  def category?
    true unless self.category.nil?
  end
end