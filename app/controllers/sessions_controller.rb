class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:index, :new,:create]

  def index
  end
  def new 
  end

  def create
    
    user = User.find_by(username: params[:session][:username])
    if user&&user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:errors] = "Could Not Find User, check your UN/PW or Signup"
      redirect_to login_path
    end

  end

  def destroy
    session.delete(:user_id) # or session[:user_id] = nil
    @current_user = nil
  end
end
