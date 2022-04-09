# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/new', type: :view do
  before(:each) do
    assign(:room, Room.new(
                    occupancy: 1,
                    room_type: nil
                  ))
  end

  it 'renders new room form' do
    render

    assert_select 'form[action=?][method=?]', rooms_path, 'post' do
      assert_select 'input[name=?]', 'room[occupancy]'

      assert_select 'input[name=?]', 'room[room_type_id]'
    end
  end
end
