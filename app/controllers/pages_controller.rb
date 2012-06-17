class PagesController < ApplicationController

  def home
  	@snapz = SnapzSayz::Information
  end
end