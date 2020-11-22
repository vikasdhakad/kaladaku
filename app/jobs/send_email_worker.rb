# frozen_string_literal: true

# Send Email Worker
class SendEmailWorker
  include Sidekiq::Worker
  sidekiq_options queue: :email

  def perform(email_address)
    name = 'Test mail'
    UserMailer.send_email_by_sidekiq(name, email_address).deliver_later
  end
end
