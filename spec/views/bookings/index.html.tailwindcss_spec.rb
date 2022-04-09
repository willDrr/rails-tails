# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'bookings/index', type: :view do
  before(:each) do
    assign(:bookings, [
             Booking.create!(
               num_of_adults: 2,
               num_of_childrens: 3,
               special_request_from_client: 'MyText',
               room: nil
             ),
             Booking.create!(
               num_of_adults: 2,
               num_of_childrens: 3,
               special_request_from_client: 'MyText',
               room: nil
             )
           ])
  end

  it 'renders a list of bookings' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
