class ActivationsController < ApplicationController

  skip_filter :authorize

  def new
  	@title      = "ACTIVATE ACCOUNT"
  	@snapz      = SnapzSayz::ActivationsSpeak.confirm_email
    @activation = Activation.new
  end

  def create
    # TODO you should probably provide some sort of “My Token is Expired!” action that will reset the token and resend the activation email if the user does not get around to activating right away.
    # TODO http://stackoverflow.com/questions/3194372/authlogic-how-to-find-if-a-user-was-not-logged-in-because-the-user-was-not-logg/3252452#3252452

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