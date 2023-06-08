class Product < ApplicationRecord
  belongs_to :section
  has_many :ratings
  has_one_attached :photo
end
