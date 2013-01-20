class WorkoutExercisesController < ApplicationController

  def index
    @workout = Workout.find(params[:workout_id])
    @renderer = WorkoutExercises::Show.new(view_context, current_user)

    respond_to do |format|
      format.json { render json: @workout.workout_exercises.map { |we| @renderer.render_json(we) } }
    end
  end

  def create
    @workout_exercise = WorkoutExercise.new(params[:workout_exercise])
    @renderer         = WorkoutExercises::Show.new(view_context, current_user)

    if @workout_exercise.save
      @workout        = @workout_exercise.workout
      flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated

      respond_to do |format|
        format.html { redirect_to users_workout_path(current_user.username, @workout) }
        format.js
        format.json { render json: @renderer.render_json(@workout_exercise) }
      end

    else
      flash[:failure] = "Sorry something went wrong - try again!"
      redirect_back
    end
  end

  def update
  	@workout_exercise = WorkoutExercise.find(params[:id])
  	@workout          = @workout_exercise.workout
  	@user             = @workout.user
    @renderer         = WorkoutExercises::Show.new(view_context, current_user)

  	if @workout_exercise.update_attributes(params[:workout_exercise])
  	  flash[:success] = SnapzSayz::WorkoutSpeak.workout_updated

      respond_to do |format|
        format.html { redirect_to users_workout_path(@user.username, @workout) }
        format.js
        format.json { render json: @renderer.render_json(@workout_exercise) }
      end

  	else
  	  flash[:failure] = SnapzSayz::WorkoutExerciseSpeak.update_failed
      render users_workout_path(@user, @workout)
  	end
  end

  def destroy
  	@workout_exercise = WorkoutExercise.find(params[:id])
    @workout          = Workout.find(@workout_exercise.workout_id)
    @renderer         = WorkoutExercises::Show.new(view_context, current_user)

    if WorkoutExerciseDestroyer.new(@workout_exercise, @workout).destroy_safely!
      flash[:success] = SnapzSayz::WorkoutExerciseSpeak.delete

      respond_to do |format|
        format.html { redirect_to users_workout_path(@workout.username, @workout) }
        format.json do
          render json: @workout.workout_exercises.order('order_number ASC').map { |we| @renderer.render_json(we) }
        end
      end

    else
      flash[:failure] = "Oops! We couldn't delete your exercise - try again."
    end
  end
end