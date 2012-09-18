class FacebookUsersController < ApplicationController
  skip_filter :authorize, only: [:create]

  def create
  	user = FacebookUser.new env["omniauth.auth"]
    if user.update_or_create
  	  session[:user_id] = user.id
  	  redirect_to root_url
      flash[:success] = SnapzSayz::UserSpeak.created_user
    else
      redirect_to login_url SnapzSayz::UserSpeak.facebook_user_issue
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end
end