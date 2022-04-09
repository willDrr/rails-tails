# frozen_string_literal: true

json.extract! room_type, :id, :room_price, :room_description, :created_at, :updated_at
json.url room_type_url(room_type, format: :json)
