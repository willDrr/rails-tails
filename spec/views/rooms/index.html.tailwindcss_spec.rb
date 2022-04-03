require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        occupancy: 2,
        room_type: nil
      ),
      Room.create!(
        occupancy: 2,
        room_type: nil
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
