Given /^I'm on a new workout page$/ do
  FactoryGirl.create :exercise
  trainer = FactoryGirl.create :trainer
  visit root_path
  click_link "NEW WORKOUT"
end

When /^I fill in the workout form$/ do
  fill_in "workout_name", 				     with: "no said date"
  fill_in "workout_notes", 				     with: "these military arm' marine. sub machine gun"
  select Workout::CLIENT_LEVELS.first, from: "workout_client_level"
  select Workout::DIFFICULTY.last, 		 from: "workout_difficulty"
  select "3", 											   from: "workout_workout_exercises_attributes_0_sets"
  fill_in "workout_workout_exercises_attributes_0_instructions", 
                                       with: "wu tang is the cd that i travel with"
  click_button "CREATE WORKOUT"
end

Then /^Snapz should give the created workout message "(.*?)"$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end

Then /^I can see the workout name$/ do
  page.should have_content "NO SAID DATE"
end