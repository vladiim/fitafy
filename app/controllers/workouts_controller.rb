require_relative '../mustaches/workouts/index'
require_relative '../mustaches/workouts/exercise'

class WorkoutsController < ApplicationController
  include DisplayCase::ExhibitsHelper

  load_and_authorize_resource except: [:index, :show]
  skip_filter :authorize, only: [:index, :show]

  def index
    # @workouts  = Workout.filter_by_tags(params[:muscles])
    @workouts  = Workout.limit(20)
    @workouts  = @workouts.offset((params[:page].to_i)*20) if params[:page].present?
    @renderer  = WorkoutsIndex.new
    @muscles   = Workout.muscles
    @equipment = Workout.equipment_names
    @title     = "Latest Workouts"

    respond_to do |format|
      format.html
      format.json do
        render json: @workouts.map { |w| view_context.workouts_index_json(w) }
      end
    end
  end

  def new
    @workout      = current_user.build_workout
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
  	@workout          = exhibit Workout.find(params[:id]), self
    @renderer         = WorkoutsExercise.new
    @trainer          = User.find @workout.user_id
    @current_user     = current_user ? current_user : nil
  	@title            = @workout.name
    @snapz_confirm    = SnapzSayz::WorkoutExerciseSpeak.confirm_delete
    @client_level     = Workout::CLIENT_LEVELS
    @difficulty       = Workout::DIFFICULTY
    @exercises        = Exercise.alphabetical_including_muscles(params[:tag])
    @muscles          = Workout.muscles
    @workout_exercise = WorkoutExercise.new

    respond_to do |format|
      format.html
      format.pdf { create_and_generate_pdf }
    end
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

    def create_and_generate_pdf
      pdf = WorkoutPdf.new @workout
      pdf.generate_content
      send_data pdf.render, pdf.render_details
    end
end