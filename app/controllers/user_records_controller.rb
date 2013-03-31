class UserRecordsController < ApplicationController

  def create
  	@record = UserRecord.new(params[:user_record])
    @user   = User::Manager.new(@record)

  	if @user.add_to_database
  	  flash[:success] = CopyGenerator::UserCopy.first_sign_up
  	  redirect_to root_path
  	else
  	  @title          = ''
  	  @user           = UserRecord.new
  	  @usp            = CopyGenerator::HomepageCopy.usp
      @error          = "'#{@record.email.upcase}' #{@record.errors.messages[:email][0]}!"
  	  flash[:error]   = CopyGenerator::UserCopy.error_first_sign_up
  	  render 'pages/home'
  	end
  end
end