class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :current_user

  private

  #confirms a logged_in user
  def logged_in_user
  	unless logged_in?
  		store_location
  		flash[:danger] = "Please log in."
  		redirect_to_login_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end



    # def current_user
    #   @current_user ||= User.find_by(id: user_id) if (user_id = session[:user_id])
    # end

end

