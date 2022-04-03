require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      occupancy: 1,
      room_type: nil
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input[name=?]", "room[occupancy]"

      assert_select "input[name=?]", "room[room_type_id]"
    end
  end
end
