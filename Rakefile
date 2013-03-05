#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Fitafy::Application.load_tasks

# to understand this problem read:
# http://stackoverflow.com/questions/12413306/error-when-doing-rake-dbmigrate-on-heroku
# http://stackoverflow.com/questions/10248893/rake-dbstructuredump-fails-under-postgresql-rails-3-2
if Rails.env.production?
  Rake::Task["db:structure:dump"].clear

  namespace :db do
    namespace :structure do
      task :dump do
      	print "-------OVERRIDING RAILS SO HEROKU DOESN'T BLOW UP"
      end
    end
  end
end