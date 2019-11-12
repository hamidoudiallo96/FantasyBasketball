class TournamentsController < ApplicationController
  private
    def set_tournaments
        @tournament = Tournament.find(params[:id])
    end
    def tournament_params
      params.require(:tournament).permit(:name)
    end
end
