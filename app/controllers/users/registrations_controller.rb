# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    include Accessible

    skip_before_action :check_resource, except: %i[new create]

    before_action :configure_sign_up_params, only: %i[create update]

    after_action :send_email_notification, only: :create

    protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permite(:sign_up, keys: %i[
                                           guest_title
                                           first_name
                                           last_name
                                           date_of_birth
                                           gender
                                           phone_number
                                           passport_number
                                           address
                                           postal_code
                                           city
                                           country
                                         ])
    end
  end

  def send_email_notification
    begin
      UserMailer.with(resource: @resource).new_comment.deliver_now
    rescue Exception => e
      puts "Something went wrong when sending email #{e}"
    end
  end
end
