# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def send_email
    RestClient.post(
      "https://api:#{ENV['MAILGUN_API_KEY']}@api.mailgun.net/v3/#{ENV['MAILGUN_DOMAIN_NAME']}/messages",
      from: "Excited user <mailgun@#{MAILGUN_DOMAIN_NAME}>",
      to: @user.email,
      subject: 'Hello world'
    )
  end
end
