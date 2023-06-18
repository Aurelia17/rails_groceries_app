class Cart < ApplicationRecord
  has_many :order_items
  has_many :products, through: :cart_items
end
