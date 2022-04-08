require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      num_of_adults: 1,
      num_of_childrens: 1,
      special_request_from_client: "MyText",
      room: nil
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[num_of_adults]"

      assert_select "input[name=?]", "booking[num_of_childrens]"

      assert_select "textarea[name=?]", "booking[special_request_from_client]"

      assert_select "input[name=?]", "booking[room_id]"
    end
  end
end
