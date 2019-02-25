class AddColumnToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :name, :string
  end
end
