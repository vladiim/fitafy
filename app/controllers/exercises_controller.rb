class ExercisesController < ApplicationController
  load_and_authorize_resource

  skip_filter :authorize, only: [:index, :show]

  def index
    @title     = Exercise.index_title(params[:muscle])
    @exercises = Exercise.filter_by_muscle(params[:muscle])
    @muscles   = Workout.muscles

    @renderer              = Exercises::Index.new
    @renderer.view_context = view_context
    @renderer.user         = current_user

    respond_to do |format|
      format.html
      format.json do
        render json: @exercises.map { |e| @renderer.render_json(e, view_context)}
      end
    end
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
    @exercise          = Exercise.find(params[:id])
    @renderer          = Exercises::Show.new
    @renderer.exercise = @exercise
    @title             = @exercise.name

    respond_to do |format|
      format.html
      format.json { render json: @renderer.render_json(@exercise) }
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