class WorkoutsController < ApplicationController

  def new
  	@title   = "New Workout"
  	@snapz   = SnapzSayz::WorkoutSpeak.creating_new_workout
  	@workout = Workout.new
  end
end