class AddColumnsToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :remarques, :text
    add_column :tournaments, :equipe_tableau_principal, :integer
    add_column :tournaments, :wildcard_principal, :integer
    add_column :tournaments, :place_reservees_qualif, :integer
    add_column :tournaments, :equipe_qualif, :integer
    add_column :tournaments, :wildcard_qualif, :integer
    add_column :tournaments, :terrains_normes, :integer
    add_column :tournaments, :date_qualif, :date
    add_column :tournaments, :date_principal, :date
    add_column :tournaments, :prize_money, :integer
    add_column :tournaments, :split_prize_money, :string
    add_column :tournaments, :limit_inscription, :date
    add_column :tournaments, :reunion_qualif, :datetime
    add_column :tournaments, :reunion_principal, :datetime
    add_column :tournaments, :ville, :string
    add_column :tournaments, :club_organisateur, :string
    add_column :tournaments, :contact, :string
    add_column :tournaments, :genre, :boolean
  end
end
