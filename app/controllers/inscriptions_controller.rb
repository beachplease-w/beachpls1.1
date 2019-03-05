class InscriptionsController < ApplicationController
  before_action :find_tournament, only: [:create]

  def create
    @inscription = Inscription.new
    @inscription.team = Team.find(params["team-id"])
    @inscription.tournament = @tournament
    @inscription.tournament_sku = @tournament.sku
    @inscription.amount_cents = @tournament.price
    @inscription.state = 'pending'
    if @inscription.save
      redirect_to inscription_path(@inscription)
    else
      redirect_to tournament_teams_path(@tournament)
    end
  end

  def show
    @inscription = Inscription.find(params[:id])
  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:tournament_id])
  end

  # def inscriptions_params
  #   params.require(:inscription).permit(:team, :tournament)
  # end
end

  # def show
  #   @order = current_user.orders.where(state: 'paid').find(params[:id])
  # end
