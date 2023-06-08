class CreateCheckoutCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :checkout_carts do |t|
      t.integer :total_price
      t.text :delivery_address
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
