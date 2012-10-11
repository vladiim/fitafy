class WorkoutsController < ApplicationController
  include DisplayCase::ExhibitsHelper

  load_and_authorize_resource except: [:index, :show]
  skip_filter :authorize, only: [:index, :show]
  before_filter :create_exercise_variables, only: [:new, :edit]

  def index
    @workouts  = Workout.filter_by_tags(params[:muscles]) #.filter_by_tags(params[:equipment])
    @muscles   = Workout.muscles
    @equipment = Workout.equipment_names
    @title     = "Latest Workouts"
  end

  def new
    @workout      = current_user.build_workout
  	@title        = "New Workout"
    @client_level = Workout::CLIENT_LEVELS
    @difficulty   = Workout::DIFFICULTY
  	@snapz        = SnapzSayz::WorkoutSpeak.creating_new_workout
  end

  def create
    @workout = current_user.build_workout(params[:workout])
  	if @workout.save
  	  redirect_to user_workout_path(current_user, @workout)
  	  flash[:success] = SnapzSayz::WorkoutSpeak.created_workout
  	else
      flash[:error] = SnapzSayz::WorkoutSpeak.new_workout_fail
      redirect_to :back
  	end
  end

  def show
  	@workout       = exhibit Workout.find(params[:id]), self

    # @workout = WorkoutExhibit.new(@workout, self)
    # if @workout.user == current_user
    #   @workout = CurrentUserOwnedWorkoutExhibit.new(@workout, self)
    # end

    @trainer       = User.find @workout.user_id
    @current_user  = current_user ? current_user : nil
  	@title         = @workout.name
    @snapz_confirm = SnapzSayz::WorkoutExerciseSpeak.confirm_delete
    @client_level  = Workout::CLIENT_LEVELS
    @difficulty    = Workout::DIFFICULTY
    @exercises     = Exercise.by_alphabetical_tags(params[:tag])
    @muscles       = Workout.muscles

    respond_to do |format|
      format.html
      format.pdf { create_and_generate_pdf }
    end
  end

  def edit
    @workout              = Workout.find(params[:id])
    @title                = "Edit Workout"
    @snapz                = SnapzSayz::WorkoutSpeak.editing_exsisting_workout
    @snapz_confirm_delete = SnapzSayz::WorkoutSpeak.deleting_workout_confirmation
  end

  def update
    @workout = current_user.workouts.find(params[:id])
    if @workout.update_attributes(params[:workout])
      redirect_to user_workout_path(current_user, @workout)
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated
    else
      render :new
    end
  end

  def destroy
    current_user.workouts.destroy(params[:id])
    redirect_to root_path
    flash[:success] = SnapzSayz::WorkoutSpeak.deleted_workout
  end

  private
    def create_exercise_variables
      @exercises = Workout.exercises_by_alphabetical_tags(params[:muscles])
      @equipment = Workout.equipment_names
      @muscles   = Workout.muscles
    end

    def create_and_generate_pdf
      pdf = WorkoutPdf.new @workout
      pdf.generate_content
      send_data pdf.render, pdf.render_details
    end
end