class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  has_one :order
  validates :total_price, presence: true
end
