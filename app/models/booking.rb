# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :room

  #belongs_to :hotel
end
