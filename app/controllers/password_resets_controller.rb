class PasswordResetsController < ApplicationController
  skip_filter :authorize
  before_filter :load_user_using_perishable_token, only: [:edit, :update]

  def new
  	@title   = "RESET PASSWORD"
  	@reseter = PasswordReset.new
  end

  def create
  	PasswordReset.reset_password(params[:password_reset][:email])
  	flash[:notice] = SnapzSayz::UserSpeak.sent_password_reset
  	redirect_to root_path
  end

  def edit
  	@reseter = PasswordReset.new
  end

  def update
  	@reseter = PasswordReset.new(params[:user])
  	if @reseter.update_user
  	  flash[:success] = "Boom! Welcome back!"
  	  redirect_to user_path(@reseter.user)
  	else
  	  flash[:error] = "Whoops - there was an issue..."
  	  render :edit
  	end
  end

  private

    def load_user_using_perishable_token
      @user = User.find_and_destroy_token(params[:id])
      return @user if @user
      flash[:notice] = SnapzSayz::UserSpeak.cant_find_perishable_token
      redirect_to root_path
    end
end