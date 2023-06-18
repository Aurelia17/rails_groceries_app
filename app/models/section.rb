class Section < ApplicationRecord
  has_one_attached :photo
  has_one_attached :banner
  has_many :products
  validates :title, presence: true, uniqueness: true
end
