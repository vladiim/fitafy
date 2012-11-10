class WorkoutExercisesController < ApplicationController

  def create
    @workout_exercise = WorkoutExercise.new(params[:workout_exercise])
    if @workout_exercise.save
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
      redirect_to user_workout_path(current_user.id, @workout_exercise.workout)
    else
      flash[:failure] = "Sorry something went wrong - try again!"
      redirect :back
    end
  end

  def update
  	@workout_exercise = WorkoutExercise.find(params[:id])
  	@workout = @workout_exercise.workout
  	@user = @workout.user

  	if @workout_exercise.update_safely(params[:workout_exercise])
  	  flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated

      respond_to do |format|
  	    format.html { redirect_to user_workout_path(@user, @workout) }
        format.js
      end
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