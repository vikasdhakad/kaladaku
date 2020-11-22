class UserMailer < ApplicationMailer
  def send_email_by_sidekiq(name, email)
    @name = name
    @email = email
    mail(to: email, subject: "Welcome to sidekiq emails portal",
         tag: 'send_email_by_sidekiq', track_opens: 'true')
  end
end