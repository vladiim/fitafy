class PagesController < ApplicationController

  def home
  	@user        = UserRecord.new
  	@usp         = CopyGenerator::HomepageCopy.usp
  	@sub_heading = CopyGenerator::HomepageCopy.sub_heading
    @features    = CopyGenerator::HomepageCopy.features
  end
end