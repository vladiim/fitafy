class WorkoutsController < ApplicationController

  def new
  	@title   = "New Workout"
  	@snapz   = SnapzSayz::WorkoutSpeak.creating_new_workout
  	@workout = Workout.new
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
  	@title   = @workout.name
  end

  def edit
    @title                = "Edit Workout"
    @snapz                = SnapzSayz::WorkoutSpeak.editing_exsisting_workout
    @snapz_confirm_delete = SnapzSayz::WorkoutSpeak.deleting_workout_confirmation
    @workout              = Workout.find(params[:id])
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