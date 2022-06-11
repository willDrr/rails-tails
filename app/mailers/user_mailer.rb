# frozen_string_literal: true

require 'mailgun-ruby'

class UserMailer < ApplicationMailer
  def self.send_email(resource)
    api_key = ENV['MAILGUN_API_KEY']
    domain_name = ENV['MAILGUN_DOMAIN_NAME']
    email_client = Mailgun::Client.new(api_key)

    message_params = {
      from: "Excited user <mailgun@#{domain_name}>",
      to: resource.email,
      suject: 'Email confirmation',
      text: 'Please, to continue using our website, confirm your account'
    }
    email_client.send_message("mailgun@#{domain_name}", message_params)
  end
end
