# frozen_string_literal: true

class Employees::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create, :update]

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,
     :last_name,
     :date_of_birth,
     :gender,
     :phone_number,
     :salary,
     :role_id, 
     :email, :password, :password_confirmation])
  end
end
