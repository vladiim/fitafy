require 'factory_girl'

FactoryGirl.define do

  sequence(:string) { |n| WuTangIpsum.generate }

  factory :user, class: User, aliases: [:trainer] do
    profile
  	username              { "johnny #{ rand 10000 }" }
  	email                 { "tical-#{rand(10000)}@wu.com" }
  	password              "password"
  	password_confirmation "password"
    terms_of_service      "true"

    factory :active_trainer do
      active true
      # organisation
    end
  end

  factory :profile do
    first_name    "Firstname"
    last_name     "Lastname"
    # bio           "blah blah"
    # avatar        "AvatarUploader"
    experience    4.5
    hourly_rate   85
    url           "http://www.fitnessfirst.com.au/gyms/gyms-in-sydney/club-sydney-cbd---bond-street/"
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

  # factory :organisation do
  #   name          "Fitness First"
  #   street        "20 Bond St"
  #   suburb        "CBD"
  #   city          "Sydney"
  #   state         "NSW"
  #   country       "Australia"
  #   postcode      2000
  # end
end