class AddRoomingToRoomTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :room_types, :rooming, :string
  end
end
