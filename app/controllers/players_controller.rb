class PlayersController < ApplicationController
  before_action :set_players, only: [:show]
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create]
  def index
    @players = Player.all
  end

  def show
  end

  private
    def set_players
        @user = User.find(params[:id])
    end
    def player_params
      params.require(:player).permit(:first_name,:last_name,:position,:pts)
    end
end
