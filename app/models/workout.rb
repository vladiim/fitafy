class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :workout_exercises_details

  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises
  has_many :exercises, through: :workout_exercises

  attr_accessor :workout_exercises_details

  after_save :create_workout_exercises

  validates_presence_of :name, :notes

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  def all_exercises
    Exercise.all
  end

  def list_exercises
    workout_exercises
  end

  def create_workout_exercises
    if @workout_exercises_details
      @workout_exercises_details.each do |exercise_attr|
        exercise = exercise_attr[1] # saved as hash ie "0" => {"exericse_id" => 2, "blah" => "blah"}
        workout_exercises.create(exercise_id: exercise['exercise_id'],
                                 sets:        exercise['sets'],
                                 rep_weight:  exercise['rep_weight'],
                                 rep_time:    exercise['rep_time']
        )
      end
    end
  end

  def new_workout_exercise
    workout_exercises.build
  end
end