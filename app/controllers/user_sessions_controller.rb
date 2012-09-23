class UserSessionsController < ApplicationController

  skip_filter :authorize

  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])
  	if @user_session.save
  		flash[:success] = SnapzSayz::UserSessionSpeak.login
      redirect_back root_url
  	else
  		render action: :new
  	end
  end

  def destroy
    if session[:facebook_user_id]
      session[:facebook_user_id] = nil
    else
  	  current_user_session.destroy
    end

  	flash[:success] = SnapzSayz::UserSessionSpeak.logout
  	redirect_to root_url
  end
end