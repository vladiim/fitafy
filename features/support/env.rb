require 'cucumber/rails'
require 'capybara/rails'
require 'rr'
require 'haml'
require 'authlogic'
require 'authlogic/test_case'
require 'factory_girl/step_definitions'
require 'capybara/poltergeist'

# ------------ GENERAL SETTINGS ------------ #

Capybara.default_selector  = :css

ActionController::Base.allow_rescue = false

# ------------ HEADLESS JS TESTING ------------ #

Capybara.javascript_driver = :poltergeist

# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, debug: true,
#                                          logger: true,
#                                          phantomjs_logger: true)
# end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_logger: true)
end

# ------------ DATABASE CLEANING STRATEGY ------------ #

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

# ------------ SHARED DATABASE ------------ #

# Forces all threads to share the same connection. This works on
# Capybara because it starts the web server in a thread.
class ActiveRecord::Base
  mattr_accessor :shared_connection
   @@shared_connection  = nil
 
  def self.connection
     @@shared_connection  || retrieve_connection
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection

# ------------ AUTH LOGIC FOR JAVASCRIPT ------------ #
# see http://stackoverflow.com/questions/10775472/authlogic-with-capybara-cucumber-selenium-driver-not-working

module Authlogic
  module Session
    module Activation
      module ClassMethods
        def controller
          if !Thread.current[:authlogic_controller]
            Thread.current[:authlogic_controller] = Authlogic::TestCase::MockController.new
          end
          Thread.current[:authlogic_controller]
        end
      end
    end
  end
end