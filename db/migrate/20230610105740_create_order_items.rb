class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.float :total_price
      t.references :product, null: false, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
