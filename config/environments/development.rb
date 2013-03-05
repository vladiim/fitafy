#https://github.com/zapnap/resque_mailer
# QUEUE = mailer rake development resque:work

Fitafy::Application.configure do

  # don't use ssl
  config.force_ssl = false

  # https://devcenter.heroku.com/articles/redistogo
  ENV["REDISTOGO_URL"] = 'redis://redistogo:162405c0386852140e29446c0e6c9edf@carp.redistogo.com:9665/' 

  # sendgrid
  # config.action_mailer.default_url_options = { host: "smtp.sendgrid.net" }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp

  # Settings specified here will take precedence over those in config/application.rb

  # This should be in application.rb
  # it is here due to an error with rails 
  # http://stackoverflow.com/questions/12413306/error-when-doing-rake-dbmigrate-on-heroku
  # http://stackoverflow.com/questions/10248893/rake-dbstructuredump-fails-under-postgresql-rails-3-2
  config.active_record.schema_format = :sql

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end
