Health::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # config.action_mailer.default_url_options = {:host => "localhost:5500"}

  config.action_mailer.asset_host = "http://localhost:5500"


  # config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'safe-beyond-9240.herokuapp.com' }
#   config.action_mailer.smtp_settings = {
#   address: "smtp.gmail.com",
#   port: 587,
#   authentication: 'plain',
#   enable_starttls_auto: true,
#   user_name: 'tulasi.chintha@gmail.com',
#   password: 'dwuubdwuqfcircml'
# }

config.action_mailer.smtp_settings = {
   :address => "mail.authsmtp.com",
   :port => 2525,
   :domain => "objectstream.com",
   :authentication => :login,
   :user_name => "ac51259",
   enable_starttls_auto: true,
   :password => "smtpmail20!4",
}
  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
