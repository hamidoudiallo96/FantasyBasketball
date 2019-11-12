class UsersController < ApplicationController
  private
    def set_users
        @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:first_name,:last_name,:user_name,:email,:password)
    end
end
