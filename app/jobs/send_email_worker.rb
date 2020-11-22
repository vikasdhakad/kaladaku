# frozen_string_literal: true

# Send Email Worker
class SendEmailWorker
  include Sidekiq::Worker
  sidekiq_options queue: :email

  def perform(email_address)
    email_address = 'vikasdhakad989@gmail.com'
    name = 'Test vikas'
    UserMailer.send_email_by_sidekiq(name, email_address).deliver_later
  end
end
