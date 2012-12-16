class ActivationsController < ApplicationController

  skip_filter :authorize

  def new
  	@title      = "ACTIVATE ACCOUNT"
  	@snapz      = SnapzSayz::ActivationsSpeak.confirm_email
    @activation = Activation.new
  end

  def create
    @user = User.find_using_perishable_token(params[:activation_code]) || redirect_with_message
    active_user_message if @user.active?

    if @user.activate!
      flash[:success] = "You're account has been activated!"
      UserSession.create(@user, false)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def reset
  	email = params[:activation][:email]
    @activation = Activation.new
    @activation.resend email
    flash[:success] = "Email resent to #{email}!"
    render :new
  end

  private

    def redirect_with_message
      flash[:error] = "That activation url didn't work why not generate a new one?"
      redirect_to :new
    end

    def active_user_message
      flash[:error] = "Your account is already activated."
    end
end