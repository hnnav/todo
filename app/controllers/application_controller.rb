class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user
    # gives access in views
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!session[:user_id]
    end

    def require_logged_in
      redirect_to '/login' if !logged_in?
    end
end
