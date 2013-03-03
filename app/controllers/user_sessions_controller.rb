class UserSessionsController < ApplicationController

  skip_filter :authorize

  def new
    @title        = 'LOG IN'
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])
    @user         = User.find_by_email(params[:user_session][:email])
  	if @user_session.save
  		flash[:success] = SnapzSayz::UserSessionSpeak.login
      redirect_back root_url
    elsif @user && @user.not_activated?
      flash[:error] = "Looks like you haven't confirmed your email address"
      redirect_to new_activation_path
  	else
      flash[:error] = SnapzSayz::UserSessionSpeak.didnt_login
  		render action: :new
  	end
  end

  def destroy
    (session[:facebook_user_id] = nil) if session[:facebook_user_id]

  	current_user_session.destroy
  	flash[:success] = SnapzSayz::UserSessionSpeak.logout
  	redirect_to root_url
  end
end