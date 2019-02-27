class AddKeyToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :sku, :string
  end
end
