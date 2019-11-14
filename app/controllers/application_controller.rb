class ApplicationController < ActionController::Base
  before_action :current_user
  before_action :authorized

  private

    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end

    def authorized
      redirect_to login_path unless @current_user
    end
end
