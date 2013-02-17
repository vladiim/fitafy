class Users::WorkoutsController < ApplicationController

  skip_filter :authorize, only: :show

  def index
    @workouts = UserWorkoutsOrderer.new(current_user, params).get_workouts
    @renderer = Workouts::Index.new

    respond_to do |format|
      format.json do
        render json: @workouts.map { |w| @renderer.render_json(w, view_context) }
      end
    end
  end

  def show
    @workout           = Workout.find(params[:id])
    @workout_path      = current_user ? user_workout_path(current_user, @workout) : '/'
    @workout_exercises = @workout.workout_exercises
    @exercise_renderer = WorkoutExercises::Show.new view_context, current_user
    @trainer           = User.find @workout.user_id
    @current_user      = current_user ? current_user : nil
  	@title             = @workout.name
    @snapz_confirm     = SnapzSayz::WorkoutExerciseSpeak.confirm_delete
    @client_level      = Workout::CLIENT_LEVELS
    @difficulty        = Workout::DIFFICULTY
    @muscles           = Workout.muscles

    @workout.increase_views

    respond_to do |format|
      format.html
      format.pdf { create_and_generate_pdf }
      format.js
    end
  end

  private

    def create_and_generate_pdf
      @workout.increase_pdfs_downloaded
      pdf = WorkoutPdf.new @workout
      pdf.generate_content
      send_data pdf.render, pdf.render_details
    end
end