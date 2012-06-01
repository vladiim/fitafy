Given /^I'm on a new workout page$/ do
  visit new_workout_path
end

When /^I fill in the workout form$/ do
  create_workout
end

Then /^Snapz should give the created workout message "(.*?)"$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end