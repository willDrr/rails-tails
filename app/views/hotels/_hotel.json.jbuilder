# frozen_string_literal: true

json.extract! hotel, :id, :hotel_name, :address, :postal_code, :city, :country, :number_of_rooms, :phone_number, :star_rating, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
