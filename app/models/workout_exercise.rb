class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id, :sets, :instructions

  belongs_to :exercise
  belongs_to :workout

  delegate :name, to: :exercise
  delegate :muscles, to: :exercise
  delegate :equipment_name, to: :exercise

  def safe_instructions
    if instructions
      instructions
    else
      SnapzSayz::WorkoutExerciseSpeak.no_instructions
    end
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
end