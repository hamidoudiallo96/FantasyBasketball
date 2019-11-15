class TeamsController < ApplicationController
  before_action :set_teams, only: [:show,:edit,:update,:destroy]
  skip_before_action :authorized, only: [:new, :create]
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def show
  end

  def create
    @team = Team.create(team_params)
    redirect_to @team
  end

  def new
    @team = Team.new
    
  end

  def edit
  end

  def update
    team.update(team_params)
    redirect_to team_path(@team.id)
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private
    def set_teams
        @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name,:location,:user_id,:player_id,:tournament_id) 
    end
end
