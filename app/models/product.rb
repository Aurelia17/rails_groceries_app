class Product < ApplicationRecord
  belongs_to :section
  has_many :ratings
  has_one :order_item
  has_one_attached :photo
  validates :title, :price, presence: true

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :title, :description ],
  associated_against: {
    section: [ :title ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
