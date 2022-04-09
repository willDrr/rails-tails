# frozen_string_literal: true

class RoomType < ApplicationRecord
  validates :room_description, :room_price, presence: true
  has_many :rooms

  accepts_nested_attributes_for :rooms
end
