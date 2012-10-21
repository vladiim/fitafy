source 'http://rubygems.org'

gem 'rails',                 '~> 3.2.0'

gem 'friendly_id',           '~> 4.0.1'
gem 'acts-as-taggable-on',   '~> 2.3.3'

# ------------ INFRASTRUCTURE ------------ #

gem 'pg',                    '~> 0.13.0'
gem 'heroku',                '~> 2.21.0'
gem 'resque',                '~> 1.22.0'
gem 'resque_mailer',         '~> 2.1.0'
gem 'newrelic_rpm',          '~> 3.5.0'
gem 'sendgrid',              '~> 1.1.0'
gem 'rack-google-analytics', '~> 0.11.0'
gem 'redis',                 '~> 3.0.2'
gem 'pry',                   '~> 0.9.9.0'

# ------------ AUTH ------------ #

gem 'authlogic',         '~> 3.1.3'
gem 'cancan',            '~> 1.6.8'
gem 'omniauth-facebook', '~> 1.4.1'

# ------------ VIEWS ------------ #

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'display_case', '~> 0.0.4', git: "https://github.com/vladiim/display-case"
gem 'haml-rails',   '~> 0.3.0'
gem 'simple_form',  '~> 2.0.0'
gem 'client_side_validations', '~> 3.2.0'

# ------------ ASSETS ------------ #

gem 'bootstrap-sass', '~> 2.0.1'
gem 'jquery-rails',   '~> 2.0.0'
gem 'carrierwave',    '~> 0.6.2'
gem 'rmagick',        '~> 2.13.1'
gem 'cloudinary',     '~> 1.0.40'
gem 'prawn',          '~> 0.12.0'

# ------------ TEST SUITE ------------ #
group :test do
  gem 'cucumber-rails',    '~> 1.3.0'
  gem 'capybara',          '~> 1.1.0'
  gem 'rr',                '~> 1.0.4'
  gem 'turn', :require => false
  gem 'database_cleaner',   '~> 0.7.2'
  gem 'factory_girl_rails', '~> 3.0'
  gem 'shoulda',            '~> 3.1.1'
end

group :development, :test do
  gem 'debugger',      '~> 1.2.0'
  gem 'rspec-rails',   '~> 2.9.0'
  gem 'jasminerice',   '~> 0.0.9'
  gem 'guard-jasmine', '~> 1.5.0'
end