class RoomType < ApplicationRecord
  validates :room_description, :room_price, presence: true
  has_many :rooms
end
