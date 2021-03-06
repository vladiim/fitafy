Given /^I've filled in the workout form$/ do
  create_exercise
  visit new_workout_path
  fill_in_workout_form
end

When /^I fill in the workout "(.*?)" field with "(.*?)"$/ do |field, value|
  fill_in field, with: value
  click_button "CREATE WORKOUT"
end

Then /^I should get the workout error message "(.*?)"$/ do |error|
  page.should have_content error
end