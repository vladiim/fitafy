Given /^I'm on a new exercise page$/ do
  visit new_exercise_path
end

When /^I fill in the exercise form$/ do
  fill_in_exercise_form
end

When /^I click the create exercise button "(.*?)"$/ do |create_exercise|
  click_button create_exercise
end

Then /^Snapz should give the created exercise message "(.*?)"$/ do |snapz_message|
  page.should have_content snapz_message
end