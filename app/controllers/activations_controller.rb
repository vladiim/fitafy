class ActivationsController < ApplicationController

  skip_filter :authorize

  def new
  	@title      = "ACTIVATE ACCOUNT"
  	@snapz      = SnapzSayz::ActivationsSpeak.confirm_email
    @activation = Activation.new
  end

  def edit
    @user = User.find_by_perishable_token(params[:id])

    if @user == nil
      redirect_bad_token

    elsif @user.active?
      redirect_active_user

    elsif @user.activate!
      flash[:success] = "You're account has been activated!"
      UserSession.create(@user, false)
      redirect_to user_path(@user)

    else
      flash[:error] = SnapzSayz::ActivationsSpeak.issue
      render :new
    end
  end

  def reset
  	email = params[:activation][:email]
    @activation = Activation.new
    @activation.resend(email)
    flash[:success] = "Email resent to #{email}!"
    render :new
  end

  private

    def redirect_bad_token
      flash[:error] = "That activation url didn't work why not generate a new one?"
      @activation = Activation.new
      render :new
    end

    def redirect_active_user
      flash[:error] = "Your account is already activated - you can log in."
      redirect_to login_path
    end
end