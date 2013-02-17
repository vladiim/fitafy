class FavoriteWorkoutsController < ApplicationController

  def create
  	favorite_workout = current_user.build_favorite_workout(params[:workout_id])

  	if favorite_workout.save
      Workout.find(params[:workout_id]).increase_favorites
  	  redirect_to :back
  	  flash[:success] = SnapzSayz::FavoriteWorkoutSpeak.create
  	else
      flash[:failure] = SnapzSayz::FavoriteWorkoutSpeak.didnt_create
  	end
  end

  def destroy
    FavoriteWorkout.find(params[:id]).delete
    flash[:success] = SnapzSayz::FavoriteWorkoutSpeak.delete_favorite_workout
    redirect_to :back
  end
end