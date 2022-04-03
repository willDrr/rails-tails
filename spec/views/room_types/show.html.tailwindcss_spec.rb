require 'rails_helper'

RSpec.describe "room_types/show", type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
      room_price: "9.99",
      room_description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
