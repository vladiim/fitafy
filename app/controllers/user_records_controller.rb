class UserRecordsController < ApplicationController

  def create
  	@user = UserRecord.new(params[:user_record])

  	if @user.save
  	  flash[:success] = CopyGenerator::UserCopy.first_sign_up
  	  redirect_to root_path
  	end
  end
end