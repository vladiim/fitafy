require 'rspec/autorun'
require 'ostruct'
require 'rr'
require_relative 'support/validation_helpers'
require_relative 'support/stub_helpers'

include ValidationHelpers
include StubHelpers

Rspec.configure do |config|
  config.mock_with :rr
end