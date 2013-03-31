class UserRecordsController < ApplicationController

  def create
  	@record = UserRecord.new(params[:user_record])
    @user   = User::Manager.new(@record)

  	if @user.add_to_database
  	  flash[:success] = CopyGenerator::UserCopy.first_sign_up
  	  redirect_to invites_path
  	else
  	  @title          = ''
  	  @user           = UserRecord.new
  	  @usp            = CopyGenerator::HomepageCopy.usp
      @sub_heading    = CopyGenerator::HomepageCopy.sub_heading
      @error          = "'#{@record.email.upcase}' #{@record.errors.messages[:email][0]}!"
      @features       = CopyGenerator::HomepageCopy.features
  	  flash[:error]   = CopyGenerator::UserCopy.error_first_sign_up
  	  render 'pages/home'
  	end
  end
end