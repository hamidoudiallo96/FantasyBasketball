class ApplicationController < ActionController::Base
  # before_action :current_user
  # before_action :logged_in?
  # before_action :authorized

  # private

  #   def current_user
  #     @current_user ||= User.find_by(id: session[:user_id])
  #   end

  #   def logged_in?
  #     !current_user.nil?
  #   end

  #   def authorized
  #     redirect_to login_path unless logged_in?
  #   end
end
