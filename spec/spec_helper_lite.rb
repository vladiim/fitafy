require 'rspec/autorun'
require 'ostruct'
require 'rr'
require_relative 'support/stub_helpers'

include StubHelpers

RSpec.configure do |config|
  config.mock_with :rr
end