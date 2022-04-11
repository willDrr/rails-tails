# frozen_string_literal: true

module Employees
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: %i[create update]

    protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name
                                                           last_name
                                                           date_of_birth
                                                           gender
                                                           phone_number
                                                           salary
                                                           role_id
                                                           email password password_confirmation])
    end
  end
end
