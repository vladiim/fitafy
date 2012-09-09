class UserSessionsController < ApplicationController

  skip_filter :authorize

  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])
  	if @user_session.save
  		flash[:success] = SnapzSayz::UserSessionSpeak.login
  		# redirect_to root_url
      redirect_back root_url
  	else
  		render action: :new
  	end
  end

  def destroy
  	current_user_session.destroy
  	flash[:success] = SnapzSayz::UserSessionSpeak.logout
  	redirect_to root_url
  end
end