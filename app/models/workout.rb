class Workout < ActiveRecord::Base

  attr_accessible :user_id, :name, :notes, :workout_exercises_attributes,
                  :client_level, :difficulty

  attr_accessor :all_exercises

  CLIENT_LEVELS = %w{Beginner Regular Pro None...}
  DIFFICULTY    = %w{Easy Medium Hard None...}

  has_many :workout_exercises,  dependent: :destroy, order: 'order_number'
  has_many :exercises,          through: :workout_exercises, uniq: true, dependent: :destroy
  has_many :favorite_workouts,  dependent: :destroy
  has_many :users,              through: :favorite_workouts, dependent: :destroy
  belongs_to :user
  has_one :workout_popularity
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?

  validates_presence_of :name, :user_id
  validates :client_level, inclusion: { in: CLIENT_LEVELS }, if: :client_level?
  validates :difficulty, inclusion:   { in: DIFFICULTY },    if: :difficulty?

  delegate :username, to: :user

  scope :find_by_exercise_muscles, lambda { |muscles| Workout.joins(:exercises).where{{ exercises => ( muscle.like_any muscles ) }} }
  scope :offset_by_page, lambda { |page| self.limit(20).offset(page.to_i * 20) }

  after_create :create_workout_popularity

  def self.trending
    # TODO:
    Workout.order("RANDOM()").limit(6)
  end

  def self.filter_by_exercise_muscles muscles=nil
    return Workout.scoped if muscles == nil
    Workout.find_by_exercise_muscles(muscles)
  end

  def level
    return SnapzSayz::WorkoutSpeak.no_level unless difficulty && client_level
    "This is a #{difficulty} workout for #{client_level} clients"
  end

  def new_workout_exercises
    all_exercises
  end

  def all_exercises
    @all_exercises ||= Exercise.all
  end

  def self.muscles
    Exercise.muscles
  end

  def self.exercises_by_alphabetical_tags tags
    Exercise.by_alphabetical_tags tags
  end

  def new_workout_exercise
    workout_exercises.build
  end

  def w_e_set_blank? attributed
    attributed['sets'].blank?
  end

  def update_exercise_order
    self.workout_exercises.each_with_index do |exercise, index|
      exercise.order_number = (index + 1)
      exercise.save
    end
  end

  def username
    User.find(self.user_id).username
  end

  def exercises_count
    workout_exercises.count
  end

  def muscles
    muscles = ""
    self.exercises.each do |exercise|
      muscles << " #{exercise.muscle}" unless muscles.match(exercise.muscle)
    end
    muscles.sub(/^\s/, "")
  end

  def copy_workout_exercises other_workout
    other_workout.workout_exercises.each do |workout_exercise|
      self.workout_exercises.create(exercise_id:  workout_exercise.exercise_id, 
                                    sets:         workout_exercise.sets, 
                                    instructions: workout_exercise.instructions)
    end
  end

  def increase_views
    # self.workout_popularity.increase_views
  end

  def increase_copies
    # self.workout_popularity.increase_copies
  end

  def increase_favorites
    # self.workout_popularity.increase_favorites
  end

  def increase_pdfs_downloaded
    # self.workout_popularity.increase_pdfs_downloaded
  end

  def to_param
    "#{id}-#{name}".parameterize
  end

  private

  def client_level?
    !client_level.nil?
  end

  def difficulty?
    !difficulty.nil?
  end

  def create_workout_popularity
    self.workout_popularity = WorkoutPopularity.create(workout_id: self.id)
  end
end