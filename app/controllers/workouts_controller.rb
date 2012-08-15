class WorkoutsController < ApplicationController
  load_and_authorize_resource except: [:index, :show]
  before_filter :create_exercise_variables, only: [:new, :edit]

  def index
    # @workouts       = Workout.all
    @workouts       = Workout.all_sorted(params[:sort])
    @exercise_types = Workout.exercise_types
    @title          = "Latest Workouts"
  end

  def new
    @workout           = current_user.build_workout
    @side_ex           = [Exercise.first, Exercise.last]
  	@title             = "New Workout"
    @client_level      = Workout::CLIENT_LEVELS
    @difficulty        = Workout::DIFFICULTY
  	@snapz             = SnapzSayz::WorkoutSpeak.creating_new_workout
  end

  def create
    @workout = current_user.build_workout(params[:workout])
  	if @workout.save
  	  redirect_to user_workout_path(current_user, @workout)
  	  flash[:success] = SnapzSayz::WorkoutSpeak.created_workout
  	else
  	  render :new
  	end
  end

  def show
  	@workout       = Workout.find(params[:id])
    @trainer       = User.find @workout.user_id
  	@title         = @workout.name
    @snapz_warning = SnapzSayz::WorkoutExerciseSpeak.confirm_delete
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
      @exercises      = Workout.exercises_by_alphabetical_category(params[:sort])
      @exercise_types = Workout.exercise_types
    end
end