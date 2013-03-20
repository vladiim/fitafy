require 'rspec/autorun'
require 'ostruct'
require 'rr'
require 'cancan/matchers'

RSpec.configure { |config| config.mock_with :rr }