require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      num_of_adults: 1,
      num_of_childrens: 1,
      special_request_from_client: "MyText",
      room: nil
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[num_of_adults]"

      assert_select "input[name=?]", "booking[num_of_childrens]"

      assert_select "textarea[name=?]", "booking[special_request_from_client]"

      assert_select "input[name=?]", "booking[room_id]"
    end
  end
end
