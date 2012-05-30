class ExercisesController < ApplicationController

  def new
  	@title    = "New Exercise"
  	@snapz 	  = SnapzSayz::ExerciseSpeak.creating_new_exercise
  	@exercise = Exercise.new
  end

  def create
  	@exercise = Exercise.new(params[:exercise])
  	if @exercise.save
  	  redirect_to root_path
  	  flash[:success] = SnapzSayz::ExerciseSpeak.created_exercise
  	else
  	  render :new
  	end
  end
end