# frozen_string_literal: true

class ApplicationController < ActionController::Base

  private

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name,
               :last_name,
               :date_of_birth,
               :gender,
               :phone_number,
               :salary,
               :role_id, 
               
               :email, :password, :password_confirmation)
    end
    # devise_parameter_sanitizer.for(:account_update) do |u|
    #   u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    # end
  end
end
