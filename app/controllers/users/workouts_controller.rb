class Users::WorkoutsController < ApplicationController
  include DisplayCase::ExhibitsHelper

  skip_filter :authorize

  def show
  	@workout          = exhibit Workout.find(params[:id]), self
    # @workout    = Workout.find(params[:id])
    # @exercises        = @workout.all_exercises

    @workout_exercises = @workout.workout_exercises
    @exercise_renderer = WorkoutExercises::Show.new

    # @base_workout     = Workout.find(params[:id])
    @trainer          = User.find @workout.user_id
    @current_user     = current_user ? current_user : nil
  	@title            = @workout.name
    @snapz_confirm    = SnapzSayz::WorkoutExerciseSpeak.confirm_delete
    @client_level     = Workout::CLIENT_LEVELS
    @difficulty       = Workout::DIFFICULTY
    @muscles          = Workout.muscles
    # @workout_exercise = WorkoutExercise.new

    respond_to do |format|
      format.html
      format.pdf { create_and_generate_pdf }
      format.js
    end
  end

  private

    def create_and_generate_pdf
      pdf = WorkoutPdf.new @workout
      pdf.generate_content
      send_data pdf.render, pdf.render_details
    end
end