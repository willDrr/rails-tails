json.extract! room, :id, :occupancy, :room_type_id, :created_at, :updated_at
json.url room_url(room, format: :json)
