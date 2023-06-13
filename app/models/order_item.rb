class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  validates :total_price, presence: true
end
