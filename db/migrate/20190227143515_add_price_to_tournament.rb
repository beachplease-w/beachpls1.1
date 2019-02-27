class AddPriceToTournament < ActiveRecord::Migration[5.2]
  def change
    add_monetize :tournaments, :price, currency: { present: false }
  end
end
