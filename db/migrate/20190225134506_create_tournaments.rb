class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.date :date
      t.string :serie
      t.string :address

      t.timestamps
    end
  end
end
