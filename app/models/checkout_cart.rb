class CheckoutCart < ApplicationRecord
  belongs_to :user
  has_many :products
  validates :total_price, presence: true
  validates :delivery_address, presence: true
end
