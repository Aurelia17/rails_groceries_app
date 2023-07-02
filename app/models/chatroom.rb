class Chatroom < ApplicationRecord
  belongs_to :order
  has_many :messages, dependent: :destroy
end
