# frozen_string_literal: true

json.extract! booking, :id, :booking_date, :booking_time, :arrival_date, :departure_date, :num_of_adults,
              :num_of_childrens, :special_request_from_client, :room_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
