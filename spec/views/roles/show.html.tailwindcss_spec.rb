# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'roles/show', type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
                            role_title: 'Role Title',
                            role_description: 'MyText'
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Role Title/)
    expect(rendered).to match(/MyText/)
  end
end
