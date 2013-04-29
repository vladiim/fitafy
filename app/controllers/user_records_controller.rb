class UserRecordsController < ApplicationController

  def create
  	@record = UserRecord.new(params[:user_record])
    @user   = User::Manager.new(@record)
  	@user.add_to_database ? redirect_to_invites : rerender_homepage
  end

  private

  def redirect_to_invites
    flash[:success] = CopyGenerator::UserCopy.first_sign_up
    redirect_to controller: 'invites', action: 'index', user_email: @user.email
  end

  def rerender_homepage
    @title        = ''
    @user         = UserRecord.new
    @copy         = CopyGenerator::HomepageCopy
    @error        = "'#{@record.email.upcase}' #{@record.errors.messages[:email][0]}!"
    flash[:error] = CopyGenerator::UserCopy.error_first_sign_up
    render 'pages/home'
  end
end