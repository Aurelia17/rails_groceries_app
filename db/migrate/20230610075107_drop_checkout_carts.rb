class DropCheckoutCarts < ActiveRecord::Migration[7.0]
  def change
    drop_table :checkout_carts
  end
end
