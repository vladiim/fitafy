class PagesController < ApplicationController
  skip_filter :authorize

  def home
  	@snapz 	  = SnapzSayz::Information
  	@workouts = Workout.trending
  end

  def terms_of_service
  	@title = SnapzSayz::TermsSpeak.title
  end

  def privacy
  	@title = SnapzSayz::TermsSpeak.privacy
  end
end