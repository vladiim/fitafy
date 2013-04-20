# require 'rspec/autorun'
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
Dir[Rails.root.join("spec/support/*.rb")].each {|f| require f}

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