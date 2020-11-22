ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  address:         'smtp.gmail.com',
  domain:          'mail.google.com',
  port:            587,
  user_name:       'vikasdhakad989@gmail.com',
  password:        'Va8817145293Va@8817145293',
  authentication:  'plain'
}
