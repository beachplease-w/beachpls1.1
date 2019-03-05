class Order < ApplicationRecord
  belongs_to :user
  monetize :amount_cents

  def create
    Tournament = Tournament.find(params[:teddy_id])
    order  = Order.create!(tournament_sku: tournament.sku, amount: tournament.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
