# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    name: 'Kashish Jain',
    authentication: "plain",
    user_name: "jainabhishek7204@gmail.com",
    password: "aiZdbZZa",
    enable_starttls_auto: true
  }
end