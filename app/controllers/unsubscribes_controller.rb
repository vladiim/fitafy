class UnsubscribesController < ApplicationController
  def update
  	@record = UserRecord.find_by_perishable_token(params[:perishable_token])
  	@user   = User::Manager.new(@record)

  	if @user.unsubscribe
  	  flash[:success] = CopyGenerator::EmailCopy.unsubscribe
  	  redirect_to root_path
  	end
  end
end