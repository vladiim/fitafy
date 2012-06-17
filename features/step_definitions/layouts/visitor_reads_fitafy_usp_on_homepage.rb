Given /^I've never been to fitafy before$/ do
  # nothing to see here
end

When /^I visit the homepage$/ do
  visit root_path
end

Then /^I should see the fitafy USP message$/ do
  page.should have_content "Gazillions of workouts and exercises to help you manage your Personal Training clients!"
end

Then /^I should get a CTA to find workouts$/ do
  page.should have_button "FIND WORKOUTS"
end

Then /^I should get a CTA to create workouts$/ do
  page.should have_button "CREATE WORKOUT"
end

Then /^I should see trending workouts$/ do
  page.shoud have_content "TRENDING WORKOUTS"
end