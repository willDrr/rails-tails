class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.decimal :room_price
      t.text :room_description

      t.timestamps
    end
  end
end
