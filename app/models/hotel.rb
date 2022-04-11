# frozen_string_literal: true

class Hotel < ApplicationRecord
  has_many :booking
end
