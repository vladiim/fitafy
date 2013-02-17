class CopyWorkoutsController < ApplicationController

  def create
    @workout = Workout.find(params[:id])

    if current_user.copy_workout @workout
      @workout.increase_copies

      new_workout = current_user.workouts.last
      redirect_to users_workout_path(current_user.username, new_workout)
      flash[:success] = SnapzSayz::WorkoutSpeak.copy new_workout.name
    else
      render @workout
    end
  end
end