Given /^I'm on a new exercise page$/ do
  visit new_exercise_path
end

When /^I fill in the exercise form$/ do
  fill_in_exercise_form
  click_button "Create Exercise"
end

Then /^Snapz should give the created exercise message "(.*?)"$/ do |snapz_message|
  page.should have_content snapz_message
end