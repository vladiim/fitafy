class PagesController < ApplicationController

  def home
  	@usp = CopyGenerator::HomepageCopy.usp
  end

end