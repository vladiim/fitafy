class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize, :create_nav_workout

  helper_method :current_user_session, :current_user, :redirect_to

  rescue_from CanCan::AccessDenied do
    redirect_to root_url, alert: SnapzSayz::Information.unauthorized
  end

  def redirect_back params=nil
    if current_user && session[:redirect_to]
      redirect_to session[:redirect_to]
      session[:redirect_to] = nil
    elsif params != nil
      redirect_to params
    else
      redirect_to root_path
    end
  end

  def create_nav_workout
    if current_user
      @nav_workout = current_user.build_workout
    end
  end

  private

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      if session[:facebook_user_id]
        # User.find session[:facebook_user_id]
        @current_user = User.find(session[:facebook_user_id])
      else
        @current_user = current_user_session && current_user_session.user
      end
    end

    def authorize
      unless current_user
        session[:redirect_to] = request.referrer
        redirect_to login_path, notice: SnapzSayz::AuthSpeak.need_to_login
      end
    end
end