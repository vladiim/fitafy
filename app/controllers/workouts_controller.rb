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
end