class AddIsDeliveredToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :is_delivered, :boolean, default: false, null: false
  end
end
