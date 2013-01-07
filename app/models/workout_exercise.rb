class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id,
                  :sets, :instructions, :order_number

  belongs_to :exercise
  belongs_to :workout

  delegate :name, to: :exercise
  delegate :muscle, to: :exercise
  delegate :equipment_name, to: :exercise
  delegate :exercises, to: :workout
  delegate :user_id, to: :workout

  default_scope order("order_number ASC")

  before_create :generate_order_number

  def generate_order_number
    self.order_number = (self.exercise_number + 1)
  end

  def exercise_number
    self.exercises.count
  end

  def update_exercise_order
    self.workout.update_exercise_order
  end

  def safe_order
    order_number ? order_number : "1"
  end

  def safe_instructions
    instructions ? instructions : SnapzSayz::WorkoutExerciseSpeak.no_instructions
  end

  def self.return_workouts_from_exercises exercises
  	workout_exercises = WorkoutExercise.find_by_exercises(exercises)
    WorkoutExercise.return_workouts_from workout_exercises
  end

  def self.find_by_exercises exercises
  	workout_exercises = []
  	exercises.each do |exercise|
  	  workout_exercise = WorkoutExercise.find_by_exercise_id(exercise.id)
  	  workout_exercises << workout_exercise unless workout_exercise == nil
  	end
  	workout_exercises
  end

  def self.return_workouts_from workout_exercises
  	workouts = []
  	workout_exercises.each do |workout_exercise|
  	  workouts << Workout.find(workout_exercise.workout_id)
  	end
  	workouts
  end

  def safe_sets
    self.sets.nil? ? "0" : self.sets
  end
end