class FavoriteWorkoutsController < ApplicationController

  def create
  	favorite_workout = current_user.build_favorite_workout(params[:workout_id])
  	if favorite_workout.save
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

  def new_user
  	redirect_to sign_up_path
  	flash[:message] = SnapzSayz::FavoriteWorkoutSpeak.new_user
  end
end