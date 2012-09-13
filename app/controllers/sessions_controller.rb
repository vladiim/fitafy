class SessionsController < ApplicationController
  skip_filter :authorize, only: [:create]

  def create
  	user = FacebookUser.update_or_create(env["omniauth.auth"])
  	session[:user_id] = user.id
  	# redirect_to user_path(user)
  	redirect_to root_url
    flash[:success] = SnapzSayz::UserSpeak.created_user  	
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end
end