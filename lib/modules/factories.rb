require 'factory_girl'

FactoryGirl.define do

  sequence(:string) { |n| WuTangIpsum.generate }

  factory :user, class: User, aliases: [:trainer] do
  	username              { "johnny #{ rand 10000 }" }
  	email                 { "tical-#{rand(10000)}@wu.com" }
  	password              "password"
  	# password_confirmation "password"
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
    muscle_list     { name }
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

  factory :tag, class: ActsAsTaggableOn::Tag do
    name "cuban linx"
  end

  factory :equipment do
    name "liquid swords"
  end

  factory :favorite_workout do
    user
    workout
  end
end