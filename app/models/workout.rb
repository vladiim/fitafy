class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :workout_exercises_attributes

  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises, reject_if: :w_e_set_blank?
  has_many :exercises, through: :workout_exercises

  attr_accessor :workout_exercises_attributes

  validates_presence_of :name, :notes

  # before_save :clean_workout_exercises_attributes

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  # def clean_workout_exercises_attributes
  #   workout_exercises_attributes.each_key do |key|
  #     workout_exercises_attributes.delete key
  #   end
  # end

  # def save_and_create_workout_exercises
  #   save
  #   create_workout_exercises
  # end

  def all_exercises
    Exercise.all
  end

  def list_exercises
    workout_exercises
  end

  def new_workout_exercise
    workout_exercises.build
  end

  # def create_workout_exercises
  #   workout_exercises_attributes.each do |exercise_attrs|
  #     exercise_attrs.each do |key, value|
  #       workout_exercises.create value
  #     end
  #   end
  # end

  def w_e_set_blank? attributed
    attributed['sets'].blank?
  end

  # def create_workout_exercises
  #   workout_exercises_attributes.each do |exercise_attr|
  #     exercise = exercise_attr[1] # saved as hash ie "0" => {"exericse_id" => 2, "blah" => "blah"}
  #     workout_exercises.create(exercise_id: exercise['exercise_id'],
  #                              sets:        exercise['sets'],
  #                              rep_weight:  exercise['rep_weight'],
  #                              rep_time:    exercise['rep_time']
  #     )
  #   end
  # end

end