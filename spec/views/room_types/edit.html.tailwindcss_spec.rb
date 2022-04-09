# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'room_types/edit', type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
                                      room_price: '9.99',
                                      room_description: 'MyText'
                                    ))
  end

  it 'renders the edit room_type form' do
    render

    assert_select 'form[action=?][method=?]', room_type_path(@room_type), 'post' do
      assert_select 'input[name=?]', 'room_type[room_price]'

      assert_select 'textarea[name=?]', 'room_type[room_description]'
    end
  end
end
