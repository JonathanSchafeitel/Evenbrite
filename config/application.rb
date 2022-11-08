require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Eventbrite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.perform_deliveries = true
    ActionMailer::Base.smtp_settings = {
      :port           => "smtp.mailgun.org",
      :address        => 587,
      :user_name      => "postmaster@sandboxd5509a40e8f241068d1da3f1c0450f0f.mailgun.org",
      :password       => "c2b53456fdf150335636967cbf583f5d-48c092ba-097d829a",
      :domain         => 'glacial-waters-09824.herokuapp.com',
      :authentication => :plain,
    }
    ActionMailer::Base.delivery_method = :smtp

end
end