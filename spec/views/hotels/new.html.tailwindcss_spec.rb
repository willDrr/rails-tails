# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'hotels/new', type: :view do
  before(:each) do
    assign(:hotel, Hotel.new(
                     hotel_name: 'MyString',
                     address: 'MyString',
                     postal_code: 'MyString',
                     city: 'MyString',
                     country: 'MyString',
                     number_of_rooms: 1,
                     phone_number: 'MyString',
                     star_rating: 1
                   ))
  end

  it 'renders new hotel form' do
    render

    assert_select 'form[action=?][method=?]', hotels_path, 'post' do
      assert_select 'input[name=?]', 'hotel[hotel_name]'

      assert_select 'input[name=?]', 'hotel[address]'

      assert_select 'input[name=?]', 'hotel[postal_code]'

      assert_select 'input[name=?]', 'hotel[city]'

      assert_select 'input[name=?]', 'hotel[country]'

      assert_select 'input[name=?]', 'hotel[number_of_rooms]'

      assert_select 'input[name=?]', 'hotel[phone_number]'

      assert_select 'input[name=?]', 'hotel[star_rating]'
    end
  end
end
