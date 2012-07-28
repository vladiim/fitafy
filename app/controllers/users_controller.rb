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

  def edit
    @title = "Edit Profile"
    @user  = current_user
  end

  def update
    if current_user.update_attributes(params[:user])
      flash[:success] = SnapzSayz::UserSpeak.update_user
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def show
    @user  = User.find(params[:id])
    # @user = User.find_by_params(params[:id])
    @title = @user.username
  end
end