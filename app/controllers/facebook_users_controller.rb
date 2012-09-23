class FacebookUsersController < ApplicationController
  skip_filter :authorize, only: [:create]

  def create
  	facebook_user = FacebookUser.from_auth env["omniauth.auth"]
    if facebook_user.save
  	  session[:facebook_user_id] = facebook_user.user_id
  	  redirect_to root_url
      flash[:success] = SnapzSayz::UserSpeak.created_user
    else
      redirect_to login_url 
      flash[:error] = SnapzSayz::UserSpeak.facebook_user_issue
    end
  end
end