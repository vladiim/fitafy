require 'factory_girl'

FactoryGirl.define do

  factory :trainer, class: User do
  	username  "johnny blaze"
  	email     "tical@wu.com"
  	password  "password"
  	password_confirmation "password"
  end
end

World FactoryGirl::Syntax::Methods