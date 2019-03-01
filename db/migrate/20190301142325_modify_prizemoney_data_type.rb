class ModifyPrizemoneyDataType < ActiveRecord::Migration[5.2]
  def change
    remove_column :tournaments, :prize_money
    add_monetize :tournaments, :prize_money, currency: { present: false }
  end
end
