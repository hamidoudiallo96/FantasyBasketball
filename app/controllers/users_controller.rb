require 'rest-client'
require 'json'

class UsersController < ApplicationController
  before_action :set_users, only: [:show, :update, :edit, :destroy]
  
  def index
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def show
  end

  def update
    @user = User.update(user_params)
    redirect_to @user
  end

  def edit

  end

  def destroy
    @user = User.destroy
    redirect_to (home page)
  end

  private
    def set_users
        @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:first_name,:last_name,:user_name,:email,:password)
    end
end
