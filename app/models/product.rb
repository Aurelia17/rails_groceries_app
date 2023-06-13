class Product < ApplicationRecord
  belongs_to :section
  has_many :ratings
  has_one :order_item
  has_one_attached :photo
  validates :title, :price, presence: true
end
