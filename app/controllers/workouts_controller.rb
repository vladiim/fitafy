class WorkoutsController < ApplicationController

  load_and_authorize_resource except: [:index]
  skip_filter :authorize,     only: [:index]

  def index
    @workouts  = Workout.filter_by_exercise_muscles(params[:muscles])
                        .offset_by_page(params[:page])

    @renderer  = Workouts::Index.new
    @muscles   = Workout.muscles
    @equipment = Workout.equipment_names
    @title     = "Latest Workouts" # could show muscles & pages here

    respond_to do |format|
      format.html
      format.json do
        render json: @workouts.map { |w| @renderer.render_json(w, view_context) }
      end
    end
  end

  def new
    @workout = current_user.build_workout
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

  def update
    @workout = current_user.workouts.find(params[:id])
    if @workout.update_attributes(params[:workout])
      redirect_to users_workout_path(current_user.username, @workout)
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
end