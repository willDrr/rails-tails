require 'rails_helper'

RSpec.describe "room_types/index", type: :view do
  before(:each) do
    assign(:room_types, [
      RoomType.create!(
        room_price: "9.99",
        room_description: "MyText"
      ),
      RoomType.create!(
        room_price: "9.99",
        room_description: "MyText"
      )
    ])
  end

  it "renders a list of room_types" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
