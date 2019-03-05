class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,  # You should store this customer id and re-use it.
      amount:       @inscription.amount_cents,
      description:  "Payment for tournament #{@inscription.tournament_sku} for order #{@inscription.id}",
      currency:     @inscription.amount.currency
    )

    @inscription.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@inscription)
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@inscription)
  end

private

  def set_inscription
    @inscription = current_user.inscriptions.where(state: 'pending').find(params[:inscription_id])
  end
end
