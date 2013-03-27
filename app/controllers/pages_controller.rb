class PagesController < ApplicationController

  def home
  	@user = UserRecord.new
  	@usp  = CopyGenerator::HomepageCopy.usp
  end
end