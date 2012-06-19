class PagesController < ApplicationController

  def home
  	@snapz 	  = SnapzSayz::Information
  	@workouts = Workout.trending
  end
end