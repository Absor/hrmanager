class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :currently_signed_in?

  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def currently_signed_in?
    current_user != nil
  end

  private

    def require_login
      unless currently_signed_in?
        redirect_to :root
      end
    end
end
