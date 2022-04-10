# frozen_string_literal: true

module RoomsHelper
  def is_booked?
    @room.booking.nil?
  end

  def booked_rooms
    Room.all.map(&:booking)
  end
end
