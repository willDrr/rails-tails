# frozen_string_literal: true

class ChnageEmailConfirmationConstrain < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :confirmation_token, true
    change_column_null :users, :confirmed_at, true
    change_column_null :users, :confirmation_sent_at, true
  end
end
