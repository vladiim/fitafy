require 'factory_girl'

FactoryGirl.define do

  sequence(:string) { |n| WuTangIpsum.generate }

  factory :user, aliases: [:trainer] do
  	username              { "johnny #{ generate :string }" }
  	email                 { "tical-#{rand(10000)}@wu.com" }
  	password              "password"
  	password_confirmation "password"
  end

  factory :exercise do
    name        { "liquid #{ generate :string }" }
  	description "wu gambinos"
  	tips  		  "protect yo neck"
  	categories  { "shoalin #{name} sword style abs" }
  	equipment 	"bobby boulders"
  end

  factory :workout do
    name         { "no said date #{ generate :string }" }
    notes        "these military arm' marine. sub machine gun"
    client_level "Beginner"
    difficulty   "Easy"
    association  :user
  end

  factory :workout_exercise do
  	association :workout
  	association :exercise
  	sets "3"
  end
end