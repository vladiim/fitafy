Given /^I'm on a new workout page$/ do
  visit new_workout_path
end

When /^I fill in the workout form$/ do
  fill_in "workout_name", with: "no said date"
  fill_in "workout_notes", with: "These military arm' marine, sub machine gun"
  click_button "Create Workout"
end

Then /^Snapz should give the created workout message "(.*?)"$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end