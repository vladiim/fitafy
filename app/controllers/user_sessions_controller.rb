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
      flash[:error] = SnapzSayz::UserSessionSpeak.didnt_login
  		render action: :new
  	end
  end

  def destroy
    # debugger
    if session[:facebook_user_id]
      (session[:facebook_user_id] = nil) && current_user_session.destroy
    else
  	  current_user_session.destroy
    end
    # debugger
  	flash[:success] = SnapzSayz::UserSessionSpeak.logout
  	redirect_to root_url
  end
end