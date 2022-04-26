# frozen_string_literal: true

module Employees
  class SessionsController < Devise::SessionsController
    include Accessible

    #before_action :authenticate_user!, only: %i[destroy]
    skip_before_action :check_resource, only: :destroy
  end
end
