class Workout < ActiveRecord::Base

  attr_accessible :user_id, :name, :notes, :workout_exercises_attributes, :client_level, :difficulty

  acts_as_taggable

  CLIENT_LEVELS = %w{Beginner Regular Pro}
  DIFFICULTY    = %w{Easy Medium Hard}

  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?
  has_many :exercises, through: :workout_exercises, uniq: true

  validates_presence_of :name, :user_id

  validates :client_level, inclusion: { in: CLIENT_LEVELS }
  validates :difficulty, inclusion:   { in: DIFFICULTY }

  belongs_to :user

  def self.trending
    # TODO: actually immplement trending algo based on twitter reputation gem
    limit 4
  end

  def self.all_sorted params
    Workout.tagged_with("params")
  end

  def update_tags tag
    tag_list << tag
    save!
  end

  def new_workout_exercises
    all_exercises
  end

  def all_exercises
    Exercise.all
  end

  def self.exercise_types
    Exercise::EXERCISE_TYPES
  end

  def self.exercises_by_alphabetical_category category
    Exercise.by_alphabetical_category category
  end

  def list_exercises
    workout_exercises
  end

  def new_workout_exercise
    workout_exercises.build
  end

  def w_e_set_blank? attributed
    attributed['sets'].blank?
  end

  def exercises_count
    workout_exercises.count
  end

  def copy_workout_exercises workout
    workout.workout_exercises.each do |workout_exercise|
      self.workout_exercises.create(exercise_id: workout_exercise.exercise_id, 
                                    sets: workout_exercise.sets, 
                                    notes: workout_exercise.notes)
    end
  end
end