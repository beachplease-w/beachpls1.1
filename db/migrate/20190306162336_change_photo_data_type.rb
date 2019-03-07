class ChangePhotoDataType < ActiveRecord::Migration[5.2]
  def change
    remove_column :tournaments, :photo
    add_column :tournaments, :photos, :string
  end
end
