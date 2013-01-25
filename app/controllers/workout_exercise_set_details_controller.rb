class WorkoutExerciseSetDetailsController < ApplicationController

  def update
  	workout_exercise = WorkoutExercise.find(params[:id])
    set_details = WorkoutExerciseSetDetail.new(workout_exercise)

    if set_details.update(params[:set_details])
      respond_to do |format|
        format.json { respond json: set_details.to_json }
      end
    end
  end
end