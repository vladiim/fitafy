class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id,
                  :sets, :instructions, :order_number

  serialize :set_details, ActiveRecord::Coders::Hstore

  belongs_to :exercise
  belongs_to :workout

  delegate :name, to: :exercise
  delegate :muscle, to: :exercise
  delegate :equipment_name, to: :exercise
  delegate :exercises, to: :workout
  delegate :user_id, to: :workout
  delegate :update_exercise_order, to: :workout

  before_create :generate_order_number, :default_set_details

  def generate_order_number
    self.order_number = (self.exercise_number + 1)
  end

  def exercise_number
    self.exercises.count
  end

  def set_details_to_array(mustache_helper)
    WorkoutExerciseSetDetail.new(self, mustache_helper).to_array
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

  private

  def default_set_details
    self.set_details = { "1"=>
      {set: 1,
       reps: 1,
       weight: 10}
    }
  end
end