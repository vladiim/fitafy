ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'rspec/rails'
require 'capybara/rails'
require 'database_cleaner'

require_relative 'spec_helper_lite'

# ----------------------------------------------
# SUPPORT FILES
# ----------------------------------------------
Dir[("#{Dir.pwd}/spec/support/*.rb")].each {|f| require f}

# ----------------------------------------------
# HEADLESS TESTING
# ----------------------------------------------
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|

  config.use_transactional_fixtures = true

  config.include TestHelpers

  config.order = "random"

  config.infer_base_class_for_anonymous_controllers = false

  config.include Capybara::DSL

  # config.before(:suite) do
  #   DatabaseCleaner.strategy = :truncation
  # end

  # config.before(:each) do
  #   DatabaseCleaner.start
  # end

  # config.after(:each) do
  #   DatabaseCleaner.clean
  # end
end