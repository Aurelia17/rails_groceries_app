class Section < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true
end
