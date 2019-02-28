class ChangeGenreDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :tournaments, :genre, :string
  end
end
