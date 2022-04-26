# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_426_035_059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'bookings', force: :cascade do |t|
    t.date 'booking_date'
    t.date 'booking_time'
    t.date 'arrival_date'
    t.date 'departure_date'
    t.integer 'num_of_adults'
    t.integer 'num_of_childrens'
    t.text 'special_request_from_client'
    t.bigint 'room_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'hotel_id'
    t.index ['hotel_id'], name: 'index_bookings_on_hotel_id'
    t.index ['room_id'], name: 'index_bookings_on_room_id'
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'first_name'
    t.string 'last_name'
    t.date 'date_of_birth'
    t.string 'gender'
    t.string 'phone_number'
    t.decimal 'salary'
    t.bigint 'role_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_employees_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_employees_on_reset_password_token', unique: true
    t.index ['role_id'], name: 'index_employees_on_role_id'
  end

  create_table 'hotels', force: :cascade do |t|
    t.string 'hotel_name'
    t.string 'address'
    t.string 'postal_code'
    t.string 'city'
    t.string 'country'
    t.integer 'number_of_rooms'
    t.string 'phone_number'
    t.integer 'star_rating'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'role_title'
    t.text 'role_description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'room_types', force: :cascade do |t|
    t.decimal 'room_price'
    t.text 'room_description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'rooming'
  end

  create_table 'rooms', force: :cascade do |t|
    t.integer 'occupancy'
    t.bigint 'room_type_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['room_type_id'], name: 'index_rooms_on_room_type_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'provider'
    t.string 'uid'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'guest_title'
    t.date 'date_of_birth'
    t.string 'gender'
    t.string 'phone_number'
    t.string 'passport_number'
    t.string 'address'
    t.string 'postal_code'
    t.string 'city'
    t.string 'country'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'bookings', 'hotels'
  add_foreign_key 'bookings', 'rooms'
  add_foreign_key 'rooms', 'room_types'
end
