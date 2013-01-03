class WorkoutExercisesController < ApplicationController

  def create
    @workout_exercise = WorkoutExercise.new(params[:workout_exercise])
    if @workout_exercise.save
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
      redirect_to users_workout_path(current_user.username, @workout_exercise.workout)
    else
      flash[:failure] = "Sorry something went wrong - try again!"
      redirect_back
    end
  end

  def update
  	@workout_exercise = WorkoutExercise.find(params[:id])
  	@workout          = @workout_exercise.workout
  	@user             = @workout.user

  	if @workout_exercise.update_safely(params[:workout_exercise])
  	  flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
  	else
  	  flash[:failure] = SnapzSayz::WorkoutSpeak.new_workout_fail
  	end

    respond_to do |format|
      format.html { redirect_to users_workout_path(@user.username, @workout) }
      format.js
    end
  end

  def destroy
  	@workout_exercise = WorkoutExercise.find(params[:id])
    @workout = Workout.find(@workout_exercise.workout_id)
    @workout_exercise.destroy
    redirect_to users_workout_path(@workout.username, @workout)
    flash[:success] = SnapzSayz::WorkoutExerciseSpeak.delete
  end
end