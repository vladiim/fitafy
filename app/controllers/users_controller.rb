class UsersController < ApplicationController

  def new
  	@title = "Sign Up"
  	@user  = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  	  redirect_to @user
  	  flash[:success] = SnapzSayz::UserSpeak.created_user
    else
      render :new
  	end
  end
end