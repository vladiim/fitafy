# Load the rails application
require File.expand_path('../application', __FILE__)

# Monkey patch of Hash
require_relative "../app/models/hash"

# Initialize the rails application
Fitafy::Application.initialize!