class TournamentsController < ApplicationController
  before_action :set_tournaments, only: [:show]
  def index
    @tournaments = Tournament.all
  end

  def show

  end


  private
    def set_tournaments
        @tournament = Tournament.find(params[:id])
    end
    def tournament_params
      params.require(:tournament).permit(:name)
    end
end
