# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :user_name => 'brunette24',
  :password => 'Ladyinred24',
  :domain => 'http://poojasawla.com',
  :address => 'smtp.sendgrid.net',
  :port => 25,
  :authentication => :plain,
  :enable_starttls_auto => true
}