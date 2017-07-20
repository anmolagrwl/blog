Rails.application.configure do
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

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  # Enable the logstasher logs for the current environment
# config.logstasher.enabled = true

# # Each of the following lines are optional. If you want to selectively disable log subscribers.
# config.logstasher.controller_enabled = false
# config.logstasher.mailer_enabled = false
# config.logstasher.record_enabled = false
# config.logstasher.view_enabled = false
# config.logstasher.job_enabled = false

# # Enable logging of controller params
# config.logstasher.log_controller_parameters = true

# # This line is optional if you do not want to log the backtrace of exceptions
# config.logstasher.backtrace = true
end
