class AddIsConfirmedToCart < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :is_confirmed, :boolean
  end
end
