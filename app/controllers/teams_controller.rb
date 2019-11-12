class TeamsController < ApplicationController
  private
    def set_teams
        @user = User.find(params[:id])
    end
    def team_params
      params.require(:team).permit(:name, :location, :user_id, :player_id,:tournament_id)
    end
end
