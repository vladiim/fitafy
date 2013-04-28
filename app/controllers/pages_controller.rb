class PagesController < ApplicationController

  def home
  	@user = UserRecord.new
  	@copy = CopyGenerator::HomepageCopy
  	# @usp         = CopyGenerator::HomepageCopy.usp
  	# @sub_heading = CopyGenerator::HomepageCopy.sub_heading
   #  @features    = CopyGenerator::HomepageCopy.features
  end
end