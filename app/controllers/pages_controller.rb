class PagesController < ApplicationController
  skip_filter :authorize

  def home
  	@snapz 	  = SnapzSayz::Information
  	@workouts = Workout.trending
  end
end