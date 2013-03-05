#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

if Rails.env.production?
  Rake::Task["db:structure:dump"].clear
  task 'db:structure:dump' do
  	print '...overriding db:structure:dump in production due to bug in activerecord'
  end
end

Fitafy::Application.load_tasks