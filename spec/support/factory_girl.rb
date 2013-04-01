require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do

  # factory :user, class: User, aliases: [:trainer] do
  #   profile
  # 	username              { "johnny #{ rand 10000 }" }
  # 	email                 { "tical-#{rand(10000)}@wu.com" }
  # 	password              "password"
  # 	password_confirmation "password"
  #   terms_of_service      "true"

  #   factory :active_trainer do
  #     active true
  #   end
  # end

  factory :contact_importer_record do
    name 'email'
  end
end