class CheckoutCart < ApplicationRecord
  belongs_to :user
  validates :total_price, presence: true
  validates :delivery_address, presence: true
end
