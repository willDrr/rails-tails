# frozen_string_literal: true

class Hotel < ApplicationRecord
  has_many :booking

  has_one_attached :avatar

  def avatar_thumbnail
    avatar.varient(resize: '150x150!').processed if avatar.attached?
  end
end
