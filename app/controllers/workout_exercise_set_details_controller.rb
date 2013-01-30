class WorkoutExerciseSetDetailsController < ApplicationController

  def update
  	workout_exercise = WorkoutExercise.find(params[:id])
  	mustache_helper  = WorkoutExercises::Show.new(view_context, current_user, workout_exercise)
    set_details      = WorkoutExerciseSetDetail.new(workout_exercise, mustache_helper)

    if set_details.update(params[:set_details])
      respond_to do |format|
        format.json { render json: set_details.to_json }
      end
    end
  end

  def show
    flash[:error] = "Oops! There was a problem..."
    redirect :back
  end
end