# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  # default from: "from@example.com"
  # default from: "5tgrc.test@inbox.testmail.app"
  default from: "wild3r@#{MAILGUN_DOMAIN_NAME}"
  layout 'mailer'
end
