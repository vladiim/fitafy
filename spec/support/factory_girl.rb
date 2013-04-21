require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do

  factory :user_record do
    email { "tical-#{rand(10000)}@wu.com" }
  end
end