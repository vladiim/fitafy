require 'factory_girl'

FactoryGirl.define do

  sequence(:string) { |n| WuTangIpsum.generate }

  factory :user, class: User, aliases: [:trainer] do
  	username              { "johnny #{ rand 10000 }" }
  	email                 { "tical-#{rand(10000)}@wu.com" }
  	password              "password"
  	password_confirmation "password"
    terms_of_service      "true"

    factory :active_trainer do
      active true
    end
  end

  factory :facebook_user do
    user
    uid              "12345"
    oauth_token      "1234"
    oauth_expires_at { Time.at(4503662457) }
  end

  factory :exercise do
    name            { "liquid #{ generate :string }" }
  	description     "wu gambinos"
  	tips  		      "protect yo neck"
    muscle          { Exercise::MUSCLES[0] }
    category        { Exercise::CATEGORIES[0] }
    equipment
  end

  factory :workout do
    user
    name         { "no said date #{ generate :string }" }
    notes        "these military arm' marine. sub machine gun"
    client_level "Beginner"
    difficulty   "Easy"
  end

  factory :workout_exercise do
    workout
    exercise
  	sets "3"
  end

  factory :equipment do
    name "liquid swords"
  end

  factory :favorite_workout do
    user
    workout
  end

  factory :product do
    name       "Cap Barbell Solid Hex Single Dumbbell"
    image      "https://images-na.ssl-images-amazon.com/images/I/41z7mpl3OvL._SL75_.jpg"
    price      55.98
    analytics_link "http://fitafyanalyticslink.com/"
    affiliate_link "http://amazonafilliatelink.com/"
  end

  factory :equipment_product do
    equipment
    product
  end
end