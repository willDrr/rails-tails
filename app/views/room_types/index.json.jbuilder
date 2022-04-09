# frozen_string_literal: true

json.array! @room_types, partial: 'room_types/room_type', as: :room_type
