# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def send_email
    api_key = ENV['MAILGUN_API_KEY']
    domain_name = ENV['MAILGUN_DOMAIN_NAME']
    RestClient.post(
      "https://api:#{api_key}@api.mailgun.net/v3/#{domain_name}/messages",
      from: "Excited user <mailgun@#{domain_name}>",
      to: @user.email,
      subject: 'Hello world'
    )
  end
end
