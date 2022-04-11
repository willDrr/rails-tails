# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'roles/edit', type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
                            role_title: 'MyString',
                            role_description: 'MyText'
                          ))
  end

  it 'renders the edit role form' do
    render

    assert_select 'form[action=?][method=?]', role_path(@role), 'post' do
      assert_select 'input[name=?]', 'role[role_title]'

      assert_select 'textarea[name=?]', 'role[role_description]'
    end
  end
end
