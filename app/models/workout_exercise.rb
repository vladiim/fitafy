class WorkoutExercise < ActiveRecord::Base

  attr_accessible :workout_id, :exercise_id, :sets, :instructions

  belongs_to :exercise
  belongs_to :workout

  def exercise_name
  	exercise = Exercise.find exercise_id
  	exercise.name.titleize
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

  def equipment_name
    if exercise.equipment.nil?
      return "no equipment yo"
    else
      exercise.equipment.name
    end
  end
end