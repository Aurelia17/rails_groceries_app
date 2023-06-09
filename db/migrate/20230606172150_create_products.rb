class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :quantity
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
