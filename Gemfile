source 'http://rubygems.org'

gem 'rails', '~> 3.2.13'

# ------------ INFRASTRUCTURE ------------ #

gem 'pg',           '~> 0.14.1'
gem 'heroku',       '~> 2.35.0'
gem 'thin',         '~> 1.5.1'
gem 'resque',       '~> 1.23.1'
gem 'newrelic_rpm', '~> 3.5.8.72'
gem 'sendgrid',     '~> 1.1.0'
gem 'redis',        '~> 3.0.3'
gem 'pry',          '~> 0.9.12'
gem 'squeel',       '~> 1.0.18'
gem 'activerecord-postgres-hstore', '~> 0.7.5'

group :development do
  gem 'better_errors',     '~> 0.7.2'
  gem 'binding_of_caller', '~> 0.7.1'
end

# ------------ AUTH ------------ #

gem 'authlogic', '~> 3.2.0'
gem 'cancan',    '~> 1.6.9'

# ------------ ASSETS ------------ #

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier',     '~> 1.3.0'
end

gem 'bootstrap-sass', '~> 2.3.1.0'
gem 'jquery-rails',   '~> 2.2.1'
gem 'carrierwave',    '~> 0.8.0'
gem 'cloudinary',     '~> 1.0.47'
gem 'haml_assets',    '~> 0.2.1'
gem 'compass-rails',  '~> 1.0.3'
gem 'compass-h5bp',   '~> 0.1.0'
gem 'haml-rails',     '~> 0.4'
gem 'html5-rails',    '~> 0.0.6'

# ------------ FORMS ------------ #

# note: order matters! simple_form, client_side_validations, then client_side_validations-simple_form
gem 'simple_form', '~> 2.0.4'
gem 'client_side_validations', '~> 3.2.2'
gem 'client_side_validations-simple_form', '~> 2.0.1'

# ------------ TEST SUITE ------------ #
group :test do
  gem 'capybara',                '~> 2.0.2'
  gem 'rr',                      '~> 1.0.4'
  gem 'turn', :require => false
  gem 'database_cleaner',        '~> 0.9.1'
  gem 'factory_girl_rails',      '~> 4.2.1'
  gem 'shoulda',                 '~> 3.4.0'
end

group :development, :test do
  gem 'debugger',            '~> 1.5.0'
  gem 'rspec-rails',         '~> 2.13.0'
  gem 'guard-rspec',         '~> 2.5.1'
  gem 'rb-fsevent',          '~> 0.9.3'
  gem 'jasminerice',         '~> 0.0.10'
  gem 'guard-jasmine',       '~> 1.13.2'
  gem 'sinon-rails',         '~> 1.4.2.1'
  gem 'jasmine-sinon-rails', '~> 1.3.4'
  gem 'poltergeist',         '~> 1.1.0'
end