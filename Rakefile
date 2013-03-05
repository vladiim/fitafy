#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Fitafy::Application.load_tasks

if Rails.env.production?
  Rake::Task["db:structure"].clear

  namespace :db do
    namespace :structure do
      task :dump do
      	print "-------OVERRIDING RAILS SO HEROKU DOESN'T BLOW UP"
      end
    end
  end
end