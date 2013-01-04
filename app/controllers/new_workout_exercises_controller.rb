class NewWorkoutExercisesController < ApplicationController

  def index
    @exercises = Exercise.filter_by_muscle(params[:muscle])
    @renderer  = Exercises::Index.new view_context, current_user
    @workout   = Workout.find(params[:workout_id])
    @renderer.workout = @workout

    respond_to do |format|
      format.json do
        render json: @exercises.map { |e| @renderer.render_json(e)}
      end
    end
  end
end