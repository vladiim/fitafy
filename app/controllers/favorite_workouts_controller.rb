class FavoriteWorkoutsController < ApplicationController

  def new_user
  	redirect_to sign_up_path
  	flash[:message] = SnapzSayz::FavoriteWorkoutSpeak.new_user
  end
end