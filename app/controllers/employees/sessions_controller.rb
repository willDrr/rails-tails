# frozen_string_literal: true

module Employees
  class SessionsController < Devise::SessionsController
    include Accessible

    skip_before_action :check_resource, only: :destroy
  end
end
