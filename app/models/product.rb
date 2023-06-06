class Product < ApplicationRecord
  belongs_to :section
  belongs_to :checkout_cart
  has_one_attached :photo
end
