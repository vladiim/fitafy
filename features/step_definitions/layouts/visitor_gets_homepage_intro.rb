Given /^I'm new to fitafy$/ do
  # nothing more to see here
end

When /^I visit the homepage$/ do
  visit root_path
end

Then /^I should see a homepage message$/ do
  page.should have_content "Gazillions of workouts and exercises to help you manage your Personal Training clients!"
end

Then /^I should have a CTA to find workouts$/ do
  page.should have_button "FIND WORKOUTS"
end

Then /^I should have a CTA to create workouts$/ do
  page.should have_button "CREATE WORKOUT"
end

Then /^I should see some trending workouts$/ do
  page.shoud have_content "TRENDING WORKOUTS"
end