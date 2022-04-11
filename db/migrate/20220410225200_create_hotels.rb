# frozen_string_literal: true

class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.integer :number_of_rooms
      t.string :phone_number
      t.integer :star_rating

      t.timestamps
    end
  end
end
