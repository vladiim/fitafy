class Workout < ActiveRecord::Base

  attr_accessible :user_id, :name, :notes, :workout_exercises_attributes,
                  :client_level, :difficulty

  attr_accessor :all_exercises

  CLIENT_LEVELS = %w{Beginner Regular Pro}
  DIFFICULTY    = %w{Easy Medium Hard}

  has_many :workout_exercises, dependent: :destroy, order: 'order_number'
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?
  has_many :exercises, through: :workout_exercises, uniq: true, dependent: :destroy
  has_many :favorite_workouts, dependent: :destroy
  has_many :users, through: :favorite_workouts, dependent: :destroy

  validates_presence_of :name, :user_id

  validates :client_level, inclusion: { in: CLIENT_LEVELS }, if: :client_level?
  validates :difficulty, inclusion:   { in: DIFFICULTY },    if: :difficulty?

  delegate :username, to: :user

  belongs_to :user

  def self.trending
    # TODO:
    limit 4
  end

  def self.filter_by_exercise_muscles muscles=nil
    return Workout.scoped if muscles == nil
    exercises = Exercise.includes(:workouts)
    exercises.find_all_by_muscle(muscles).map(&:workouts).flatten
    # exercises.find_each_by_muscle(muscles).map(&:workouts).flatten
  end

  # def self.filter_by_exercise_muscles muscles=nil
  #   return Workout.scoped if muscles == nil
  #   muscle_array = []
  #   muscles.split(' ').each { |m| muscle_array << m }
  #   Exercise.find_with_muscles(muscle_array).includes(:workouts).map(&:workouts).flatten
  # end

  def safe_difficulty
    return SnapzSayz::WorkoutSpeak.no_difficulty_value unless difficulty
    difficulty
  end

  def safe_client_level
    return SnapzSayz::WorkoutSpeak.no_client_level_value unless client_level
    client_level
  end

  def safe_notes
    return SnapzSayz::WorkoutSpeak.no_notes_value unless notes
    notes
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
    Exercise::MUSCLES
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

  def self.equipment_names
    Equipment.all_names
  end

  private

  def client_level?
    !client_level.nil?
  end

  def difficulty?
    !difficulty.nil?
  end
end