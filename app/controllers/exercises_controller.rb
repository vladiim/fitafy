class ExercisesController < ApplicationController

  def new
  	@title    = "New Exercise"
  	@snapz 	  = SnapzSayz::ExerciseSpeak.creating_new_exercise
  	@exercise = Exercise.new
  end
end