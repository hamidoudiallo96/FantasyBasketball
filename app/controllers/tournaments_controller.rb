class TournamentsController < ApplicationController
  before_action :set_tournaments, only: [:show]
  skip_before_action :authorized, only: [:new, :create]
  def index
    @tournaments = Tournament.all
  end

  def show

  end

  def edit
  end
  
  def update
  end

  private
    def set_tournaments
        @tournament = Tournament.find(params[:id])
    end
    def tournament_params
      params.require(:tournament).permit(:name)
    end
end
