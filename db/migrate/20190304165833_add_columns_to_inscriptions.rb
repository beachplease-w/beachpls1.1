class AddColumnsToInscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :inscriptions, :state, :string
    add_column :inscriptions, :tournament_sku, :string
    add_monetize :inscriptions, :amount, currency: { present: false }
    add_column :inscriptions, :payment, :jsonb
  end
end
