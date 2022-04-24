# frozen_string_literal: true

class AddGuestAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :guest_title, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
    add_column :users, :passport_number, :string
    add_column :users, :address, :string
    add_column :users, :postal_code, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
