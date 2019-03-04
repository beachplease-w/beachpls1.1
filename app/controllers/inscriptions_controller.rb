class InscriptionsController < ApplicationController

  def create
    @inscription = Inscription.new
    @inscription.team = Team.find(params[:team_id])
    @inscription.tournament = @tournament
    @inscription.tournament_sku = @tournament.sku
    @inscription.amount = @tournament.price
    @inscription.state = 'pending'
    @inscription.user = current_user
    if @inscription.save
      redirect_to new_order_payment_path(order)
      # redirect_to user_path(current_user, "#tournois", class: :active)
    else
      redirect_to tournament_teams_path(@tournament)
    end
  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:tournament_id])
  end

  # def inscriptions_params
  #   params.require(:inscription).permit(:team, :tournament)
  # end
end


  end
  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  private

