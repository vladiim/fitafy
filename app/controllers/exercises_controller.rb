class ExercisesController < ApplicationController
  load_and_authorize_resource

  skip_filter :authorize, only: [:index, :show]

  def index
    @title     = "All Exercises"
    @exercises = Exercise.alphabetical_including_muscles(params[:muscles])
    @muscles   = Workout.muscles
    @equipment = Workout.equipment_names
  end

  def new
  	@title    = "New Exercise"
  	@snapz 	  = SnapzSayz::ExerciseSpeak.creating_new_exercise
  	@exercise = Exercise.new
  end

  def create
  	@exercise = Exercise.new(params[:exercise])
  	if @exercise.save
  	  redirect_to @exercise
  	  flash[:success] = SnapzSayz::ExerciseSpeak.created_exercise
  	else
  	  render :new
  	end
  end

  def show
    @exercise       = Exercise.find(params[:id])
    @equipment_name = @exercise.equipment_name
    @title          = @exercise.name

    respond_to do |format|
      format.html
      format.json { render json: @exercise }
    end
  end

  def edit
    @title                = "Edit Exercise"
    @snapz                = SnapzSayz::ExerciseSpeak.editing_exsisting_exercise
    @snapz_confirm_delete = SnapzSayz::ExerciseSpeak.deleting_exercise_confirmation
    @exercise             = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
      redirect_to @exercise
      flash[:success] = SnapzSayz::ExerciseSpeak.updated_exercise
    else
      render :new
    end
  end

  def destroy
    Exercise.destroy(params[:id])
    redirect_to root_path
    flash[:success] = SnapzSayz::ExerciseSpeak.deleted_exercise
  end
end