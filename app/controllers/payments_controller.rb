class PaymentsController < ApplicationController
  before_action :set_inscription

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id, # You should store this customer id and re-use it.
      amount:       @inscription.tournament.price_cents,
      description:  "Paiement du tournoi #{@inscription.tournament_sku} pour la commande #{@inscription.id}",
      currency:     @inscription.tournament.price.currency
    )

    @inscription.update(payment: charge.to_json, state: 'paid')
    redirect_to user_path(current_user)
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@inscription)
  end

 private

  def set_inscription
    @inscription = current_user.inscriptions.where(state: 'pending').find(params[:inscription_id])
  end
end
