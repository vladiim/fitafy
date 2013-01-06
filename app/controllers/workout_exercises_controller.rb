class WorkoutExercisesController < ApplicationController

  def create
    @workout_exercise = WorkoutExercise.new(params[:workout_exercise])

    if @workout_exercise.save
      @workout = @workout_exercise.workout
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated

      respond_to do |format|
        format.html { redirect_to users_workout_path(current_user.username, @workout) }
        format.js
        format.json { render json: @workout_exercise }
      end

    else
      flash[:failure] = "Sorry something went wrong - try again!"
      redirect_back
    end
  end

  def update
  	@workout_exercise = WorkoutExercise.find(params[:id])
  	@workout          = @workout_exercise.workout
  	@user             = @workout.user
    @renderer         = WorkoutExercises::Show.new(view_context, current_user)

  	if @workout_exercise.update_attributes(params[:workout_exercise])
  	  flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
  	else
  	  flash[:failure] = SnapzSayz::WorkoutSpeak.new_workout_fail
  	end

    respond_to do |format|
      format.html { redirect_to users_workout_path(@user.username, @workout) }
      format.js
      format.json { render json: @renderer.render_json(@workout_exercise) }
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