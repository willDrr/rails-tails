# frozen_string_literal: true

require 'mailgun-ruby'

module MailerProvider
  class MaiGunClient
    def send_email
      mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']

      message_params = { from: ENV['MAILGUN_USER'],
                         to: @user.email,
                         subject: 'Email confirmation',
                         text: 'Before logging in the website, confirm your account, please.' }

      # Send your message through the client
      mg_client.send_message 'sending_domain.com', message_params
    end
  end
end
