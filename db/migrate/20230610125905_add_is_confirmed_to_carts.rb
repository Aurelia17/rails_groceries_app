class AddIsConfirmedToCarts < ActiveRecord::Migration[7.0]
  def change
    change_column :carts, :is_confirmed, :boolean, default: false, null: false
  end
end
