class CreateClassements < ActiveRecord::Migration[5.2]
  def change
    create_table :classements do |t|
      t.string :last_name
      t.string :first_name
      t.string :category
      t.integer :point
      t.string :club

      t.timestamps
    end
  end
end
