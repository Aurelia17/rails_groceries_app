class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.float :total_price
      t.boolean :is_confirmed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
