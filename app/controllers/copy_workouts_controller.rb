class CopyWorkoutsController < ApplicationController

  def create
    @workout = Workout.find(params[:id])
    if current_user.copy_workout @workout
      new_workout = current_user.workouts.last
      redirect_to user_workout_path(current_user, new_workout)
      flash[:success] = SnapzSayz::WorkoutSpeak.copy new_workout.name
    else
      render @workout
    end
  end
end