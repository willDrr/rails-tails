# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :role_title
      t.text :role_description

      t.timestamps
    end
  end
end
