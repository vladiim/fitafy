class PagesController < ApplicationController

  def home
  	# @title = "" # don't want to show
  	@snapz = SnapzSayz::Information
  end
end