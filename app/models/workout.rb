class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :workout_exercises_attributes, :client_level, :difficulty

  CLIENT_LEVELS = %w{Beginner Regular Pro}
  DIFFICULTY    = %w{Easy Medium Hard}

  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?
  has_many :exercises, through: :workout_exercises

  validates_presence_of :name #, :client_level, :difficulty

  validates :client_level, inclusion: { in: CLIENT_LEVELS }

  validates :difficulty, inclusion: { in: DIFFICULTY }

  def self.trending
    # TODO: actually immplement trending algo
    limit 4
  end

  def all_exercises
    Exercise.all
  end

  def self.exercise_types
    WorkoutExercise::EXERCISE_TYPE
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
end