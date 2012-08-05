require 'factory_girl'

FactoryGirl.define do

  factory :user, aliases: [:trainer] do
  	username              "johnny blaze"
  	email                 "tical@wu.com"
  	password              "password"
  	password_confirmation "password"
  end

  factory :exercise do
    name        "liquid swords"
  	description "wu gambinos"
  	tips  		  "protect yo neck"
  	categories  { "shoalin #{name} sword style" }
  	equipment 	"bobby boulders"
  end

  factory :workout do
    name         "no said date"
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

World FactoryGirl::Syntax::Methods