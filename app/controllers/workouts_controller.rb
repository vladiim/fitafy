class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    @title    = "Latest Workout"
  end

  def new
    @workout        = Workout.new
  	@title          = "New Workout"
  	@snapz          = SnapzSayz::WorkoutSpeak.creating_new_workout
  end

  def create
  	@workout = Workout.new(params[:workout])
  	if @workout.save
  	  redirect_to @workout
  	  flash[:success] = SnapzSayz::WorkoutSpeak.created_workout
  	else
  	  render :new
  	end
  end

  def show
  	@workout = Workout.find(params[:id])
  	@title   = @workout.titleize_name
  end

  def edit
    @workout              = Workout.find(params[:id])
    @title                = "Edit Workout"
    @snapz                = SnapzSayz::WorkoutSpeak.editing_exsisting_workout
    @snapz_confirm_delete = SnapzSayz::WorkoutSpeak.deleting_workout_confirmation
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(params[:workout])
      redirect_to @workout
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
    else
      render :new
    end
  end

  def destroy
    Workout.destroy(params[:id])
    redirect_to root_path
    flash[:success] = SnapzSayz::WorkoutSpeak.deleted_workout
  end
end