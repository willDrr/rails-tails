# frozen_string_literal: true

class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.date :booking_time
      t.date :arrival_date
      t.date :departure_date
      t.integer :num_of_adults
      t.integer :num_of_childrens
      t.text :special_request_from_client
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
