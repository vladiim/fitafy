class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

  helper_method :current_user_session, :current_user,
                :redirect_to, :navigation_renderer

  rescue_from CanCan::AccessDenied do
    redirect_to root_url, alert: SnapzSayz::Information.unauthorized
  end

  def redirect_back(params=nil)
    redirect_to_info? ? send_to_redirect_info : send_to_params_or_root(params)
  end

  def current_user
    return @current_user if defined?(@current_user)
    is_facebook_session ? find_user_via_facebook : find_user_via_user_session
  end

  def navigation_renderer
    Navigations::Show.new(view_context, current_user)
  end

  private

    def send_to_params_or_root(params)
      params_arent_empty(params) ? redirect_to(params) : redirect_to(root_path)
    end

    def params_arent_empty(params)
      params != nil
    end

    def send_to_redirect_info
      redirect_to session[:redirect_to]
      session[:redirect_to] = nil
    end

    def redirect_to_info?
      current_user && session[:redirect_to]
    end

    def find_user_via_user_session
      @current_user = current_user_session && current_user_session.user
    end

    def is_facebook_session
      session[:facebook_user_id]
    end

    def find_user_via_facebook
      @current_user = User.find(session[:facebook_user_id])
    end

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def authorize
      unless current_user
        session[:redirect_to] = request.referrer
        redirect_to login_path, notice: SnapzSayz::AuthSpeak.need_to_login
      end
    end
end