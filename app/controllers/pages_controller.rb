require_relative '../mustaches/workouts/index'

class PagesController < ApplicationController
  skip_filter :authorize

  def home
  	@snapz 	  = SnapzSayz::Information
  	@workouts = Workout.trending
    @renderer = WorkoutsIndex.new
  end

  def terms_of_service
  	@title = SnapzSayz::TermsSpeak.title
  end

  def privacy
  	@title = SnapzSayz::TermsSpeak.privacy
  end
end