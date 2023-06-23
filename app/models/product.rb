class Product < ApplicationRecord
  belongs_to :section
  has_many :ratings
  has_one :order_item
  has_one_attached :photo

  validates :title, :price, presence: true

  acts_as_taggable_on :tags

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :title, :description ],
  associated_against: {
    section: [ :title ],
    :tags => [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
end
