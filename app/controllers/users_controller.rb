class UsersController < ApplicationController
  before_action :set_users, only: [:show, :update, :edit, :destroy]
  skip_before_action :authorized, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  def show
  end

  def update
    @user = User.update(user_params)
    redirect_to new_user_path
  end

  def edit

  end

  def destroy
    @user = User.destroy
    @current_user = nil
    # redirect_to 
  end

  private
    def set_users
        @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name,:last_name,:username,:email,:password)
    end
    
    # def login_user_params
    #   params.require(:user).permit(:username,:password)
    # end
end
