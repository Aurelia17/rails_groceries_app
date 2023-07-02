class AddHasBagToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :has_bag, :boolean, default: false, null: false
    add_column :orders, :has_bag, :boolean, default: false, null: false
  end
end
