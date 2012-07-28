class UserSessionsController < ApplicationController

  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])
  	if @user_session.save
  		flash[:success] = "Welcome back yo!"
  		redirect_to root_url
  	else
  		render action: :new
  	end
  end

  def destroy
  	current_user_session.destroy
  	flash[:success] = "Logged out yo!"
  	redirect_to root_url
  end
end