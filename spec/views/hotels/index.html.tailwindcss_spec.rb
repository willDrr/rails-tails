require 'rails_helper'

RSpec.describe "hotels/index", type: :view do
  before(:each) do
    assign(:hotels, [
      Hotel.create!(
        hotel_name: "Hotel Name",
        address: "Address",
        postal_code: "Postal Code",
        city: "City",
        country: "Country",
        number_of_rooms: 2,
        phone_number: "Phone Number",
        star_rating: 3
      ),
      Hotel.create!(
        hotel_name: "Hotel Name",
        address: "Address",
        postal_code: "Postal Code",
        city: "City",
        country: "Country",
        number_of_rooms: 2,
        phone_number: "Phone Number",
        star_rating: 3
      )
    ])
  end

  it "renders a list of hotels" do
    render
    assert_select "tr>td", text: "Hotel Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Postal Code".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
