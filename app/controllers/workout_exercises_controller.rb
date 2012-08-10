class WorkoutExercisesController < ApplicationController

  def destroy
  	@workout_exercise = WorkoutExercise.find(params[:id])
    @workout = Workout.find(@workout_exercise.workout_id)
    @workout_exercise.destroy
    redirect_to user_workout_path(@workout.user_id, @workout)
    flash[:success] = SnapzSayz::WorkoutExerciseSpeak.delete
  end
end