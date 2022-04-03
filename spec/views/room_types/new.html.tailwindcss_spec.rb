require 'rails_helper'

RSpec.describe "room_types/new", type: :view do
  before(:each) do
    assign(:room_type, RoomType.new(
      room_price: "9.99",
      room_description: "MyText"
    ))
  end

  it "renders new room_type form" do
    render

    assert_select "form[action=?][method=?]", room_types_path, "post" do

      assert_select "input[name=?]", "room_type[room_price]"

      assert_select "textarea[name=?]", "room_type[room_description]"
    end
  end
end
