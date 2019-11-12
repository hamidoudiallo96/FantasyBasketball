class PlayersController < ApplicationController
  private
    def set_players
        @user = User.find(params[:id])
    end
    def player_params
      params.require(:player).permit(:first_name,:last_name,:position,:pts)
    end
end
