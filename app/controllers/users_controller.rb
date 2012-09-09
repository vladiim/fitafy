class UsersController < ApplicationController
  skip_filter :authorize, only: [:new, :create, :show]

  def new
  	@title = "Sign Up"
  	@user  = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.create_account
      redirect_back @user
  	  flash[:success] = SnapzSayz::UserSpeak.created_user
    else
      render :new
  	end
  end

  def show
    @user     = User.find(params[:id])
    @workouts = @user.my_workouts(params[:tags])
    @title    = @user.username
  end

  def edit
    @title               = "Edit Profile"
    @user                = current_user
    @delete_confirmation = SnapzSayz::UserSpeak.delete_confirmation
  end

  def update
    if current_user.update_attributes(params[:user])
      flash[:success] = SnapzSayz::UserSpeak.update_user
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    current_user.destroy
    current_user_session.destroy
    flash[:success] = SnapzSayz::UserSpeak.destroy
    redirect_to root_url
  end
end