class InscriptionsController < ApplicationController

  def create
    @inscription = Inscription.new
    @inscription.team = Team.find(params[:team_id])
    @inscription.tournament = Tournament.find(params[:tournament_id])
    if @inscription.save
      redirect_to user_path(current_user, "#tournois", class: :active)
    else
      redirect_to tournament_teams_path(@tournament)
    end
  end

  private

  def inscriptions_params
    params.require(:inscription).permit(:team, :tournament)
  end
end
