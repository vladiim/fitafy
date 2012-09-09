class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

  helper_method :current_user_session, :current_user, :redirect_to

  rescue_from CanCan::AccessDenied do
    redirect_to root_url, alert: SnapzSayz::Information.unauthorized
  end

  def redirect_back params=nil
    if current_user
      redirect_to session[:redirect_to]
      session[:redirect_to] = nil
    elsif params != nil
      redirect_to params
    else
      redirect_to root_path
    end
  end

  private

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end

    def authorize
      unless current_user
        session[:redirect_to] = request.referrer
        redirect_to login_path, notice: SnapzSayz::AuthSpeak.need_to_login
      end
    end
end