# frozen_string_literal: true

class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    set_meta_tags(
      site: 'Hotelix',
      title: 'Hotelix for local and foreigners visitors',
      description: 'Hotelix software will take care of the booking for your stay in the country.',
      keywords: %w[tourism people travel],
      author: 'Wilder'
    )
  end
end
