class SessionsController < ApplicationController

  def new
  end

  def create
    
  end

  def destroy
    session.delete(:user_id) # or session[:user_id] = nil
    @current_user = nil
  end
end