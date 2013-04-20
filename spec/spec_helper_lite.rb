# require 'rspec/autorun' if ENV['SLOW_SPECS']

require 'ostruct'
require 'rr'
require 'cancan/matchers'

# ----------------------------------------------
# COPY
# ----------------------------------------------
Dir["#{Dir.pwd}/lib/modules/copy_generator/*.rb"].each { |f| require f }

# ----------------------------------------------
# SUPPORT FILES
# ----------------------------------------------
require_relative './support/deferred_garbage_collection'

# ----------------------------------------------
# CONFIG
# ----------------------------------------------
RSpec.configure do |config|
  config.mock_with :rr

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.filter_run_excluding :slow unless ENV['SLOW_SPECS']

  # config.before(:each) { GC.disable }
  # config.after(:each) { GC.enable }
  config.before(:all) { DeferredGarbageCollection.start }
  config.after(:all) { DeferredGarbageCollection.reconsider }
end