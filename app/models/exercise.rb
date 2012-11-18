class Exercise < ActiveRecord::Base
  extend FriendlyId

  acts_as_taggable_on :muscles, :type

  attr_accessible :name, :description, :tips, :muscle, :category, :muscle_list, :type_list, :equipment_id

  MUSCLES = %w(chest back shoulders legs quadriceps glutes hamstrings calves triceps biceps forearms core full_body neck torso)

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises, uniq: true
  belongs_to :equipment

  validates_presence_of :name, :description
  validates :name, uniqueness: true

  friendly_id :name, use: :slugged

  def delete_exercise!
  	self.destroy
  end

  def muscles
    muscle_names
  end

  def muscle_names
    self.muscle ? muscle : "No muscle given"
    # names = ""
    # muscle_list.each do |muscle|
    #   names << " #{muscle.downcase}" unless names.match(muscle)
    # end
    # names.sub(/^\s/, "")
  end

  def self.by_alphabetical_tags tags=nil
    with_tags(tags).sort_by { |exercise| exercise["name"] }
  end

  def self.with_tags tags=nil, category=:muscles
    if tags
      tagged_with(tags, on: category)
    else
      scoped
    end
  end

  def equipment_name
    if equipment.nil?
      "no equipment yo"
    else
      equipment.name
    end
  end

  def equipment_list
    Equipment.all
  end
end