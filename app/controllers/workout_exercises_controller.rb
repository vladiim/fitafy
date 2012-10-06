class WorkoutExercisesController < ApplicationController

  def update
  	@workout_exercise = WorkoutExercise.find(params[:id])
  	@workout = @workout_exercise.workout
  	@user = @workout.user
  	if @workout_exercise.update_attributes(params[:workout_exercise])
  	  flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
  	  redirect_to user_workout_path(@user, @workout)
  	else
  	  flash[:failure] = SnapzSayz::WorkoutSpeak.new_workout_fail
      redirect :back
  	end
  end

  def destroy
  	@workout_exercise = WorkoutExercise.find(params[:id])
    @workout = Workout.find(@workout_exercise.workout_id)
    @workout_exercise.destroy
    redirect_to user_workout_path(@workout.user_id, @workout)
    flash[:success] = SnapzSayz::WorkoutExerciseSpeak.delete
  end
end