class Section < ApplicationRecord
  has_one_attached :photo
  has_many :products
  validates :title, presence: true, uniqueness: true
end
