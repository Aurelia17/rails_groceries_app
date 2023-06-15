class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :oder_number
      t.float :total_price
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end