# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'roles/new', type: :view do
  before(:each) do
    assign(:role, Role.new(
                    role_title: 'MyString',
                    role_description: 'MyText'
                  ))
  end

  it 'renders new role form' do
    render

    assert_select 'form[action=?][method=?]', roles_path, 'post' do
      assert_select 'input[name=?]', 'role[role_title]'

      assert_select 'textarea[name=?]', 'role[role_description]'
    end
  end
end
