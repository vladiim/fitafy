class UsersController < ApplicationController

  skip_filter :authorize, only: [:new, :create, :show]

  def new
  	@title = "Sign Up"
  	@user  = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save && @user.activate!
      flash[:success] = SnapzSayz::UserSpeak.created_user
      redirect_to user_path(@user)
    else
      flash[:error] = SnapzSayz::UserSpeak.create_user_fail
      render :new
  	end
  end

  def show
    @user     = User.find(params[:id])
    @renderer = Workouts::Index.new(view_context)
    @workouts = UserWorkoutsOrderer.new(@user, params).get_workouts
    @muscles  = Workout.muscles
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
      redirect_to user_path(@current_user)
    else
      flash[:error] = SnapzSayz::UserSpeak.didnt_update_user
      @title               = "Edit Profile"
      @user                = current_user
      @delete_confirmation = SnapzSayz::UserSpeak.delete_confirmation
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