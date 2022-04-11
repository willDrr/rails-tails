require 'rails_helper'

RSpec.describe "hotels/show", type: :view do
  before(:each) do
    @hotel = assign(:hotel, Hotel.create!(
      hotel_name: "Hotel Name",
      address: "Address",
      postal_code: "Postal Code",
      city: "City",
      country: "Country",
      number_of_rooms: 2,
      phone_number: "Phone Number",
      star_rating: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hotel Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/3/)
  end
end
