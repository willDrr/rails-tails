# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "mailgun@#{ENV['MAILGUN_DOMAIN_NAME']}", to: current_user.email
  layout 'mailer'
end
