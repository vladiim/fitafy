Given /^I've filled in the exercise form$/ do
  visit new_exercise_path
  fill_in_exercise_form
end

When /^I fill in the exercise "(.*?)" field with "(.*?)"$/ do |field, value|
  fill_in field, with: value
  click_button "CREATE EXERCISE"
end

Then /^I should get the exercise error message "(.*?)" on the "(.*?)"$/ do |error_message, field|
  page.should have_content error_message
end