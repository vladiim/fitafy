class Workout < ActiveRecord::Base

  attr_accessible :user_id, :name, :notes, :workout_exercises_attributes, :client_level, :difficulty

  CLIENT_LEVELS = %w{Beginner Regular Pro}
  DIFFICULTY    = %w{Easy Medium Hard}

  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?
  has_many :exercises, through: :workout_exercises, uniq: true
  has_many :favorite_workouts, dependent: :destroy
  has_many :users, through: :favorite_workouts

  validates_presence_of :name, :user_id

  validates :client_level, inclusion: { in: CLIENT_LEVELS }, if: :client_level?
  validates :difficulty, inclusion:   { in: DIFFICULTY }, if: :difficulty?

  belongs_to :user

  def self.trending
    # TODO: actually immplement trending algo based on twitter reputation gem
    limit 4
  end

  def self.filter_by_tags tags=nil, tag_types=nil
    Workout.all if tags == nil || tag_types == nil
    Exercise.with_tags(tags, tag_types).includes(:workouts).map(&:workouts).flatten
  end

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
    "This is a #{difficulty} workout for #{client_level} clients"
  end

  def client_level?
    !client_level.nil?
  end

  def difficulty?
    !difficulty.nil?
  end

  def new_workout_exercises
    all_exercises
  end

  def all_exercises
    Exercise.scoped
  end

  def self.muscles
    Exercise::MUSCLES
  end

  def self.exercises_by_alphabetical_tags tags
    Exercise.by_alphabetical_tags tags
  end

  # TODO delete this if it's not causing problems
  # def list_exercises
  #   workout_exercises
  # end

  def new_workout_exercise
    workout_exercises.build
  end

  def w_e_set_blank? attributed
    attributed['sets'].blank?
  end

  def exercises_count
    workout_exercises.count
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
end