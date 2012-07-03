Given /^I'm creating a new exercise$/ do
  visit new_exercise_path
end

When /^I fill in the exercise name with a blank field%/ do
  create_exercise CreateExercise::NO_NAME_ATTRS
end

Then /^I should get the exercise error message "(.*?)" on the "(.*?)"$/ do |error_message, field|
  page.should have_content error_message
end