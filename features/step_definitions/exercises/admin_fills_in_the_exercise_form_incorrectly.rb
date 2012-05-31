Given /^I've filled in an exercise form$/ do
  visit new_exercise_path
  fill_in_exercise_form
end

When /^I fill in the exercise "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, with: value
end

When /^I click the create exercise button "(.*?)"$/ do |create_exercise|
  click_button create_exercise
end

Then /^I should get the exercise error message "(.*?)" on the "(.*?)"$/ do |error_message, field|
  page.should have_content error_message
end