class UserMailer < ApplicationMailer
  def send_email(user)
    @user = user
    mail(to: @user.email, subject: 'Testing email Open Letter')
  end
end
