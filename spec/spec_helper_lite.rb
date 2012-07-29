require 'rspec/autorun'
require 'ostruct'
require 'rr'
require 'cancan/matchers'
require_relative 'support/stub_helpers'
require_relative '../lib/modules/snapz_sayz'

include StubHelpers

RSpec.configure do |config|
  config.mock_with :rr
end