# frozen_string_literal: true

require_relative 'mailer_provider'

class ApplicationController < ActionController::Base
  include MailerProvider::MailGunClient
end
