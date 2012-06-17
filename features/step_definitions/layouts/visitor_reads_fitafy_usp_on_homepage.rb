Given /^I've never been to fitafy before$/ do
  # nothing to see here
end

When /^I visit the homepage usp$/ do
  visit root_path
end

Then /^I should see the fitafy USP message$/ do
  page.should have_content "Gazillions of workouts and exercises to help you manage your Personal Training clients!"
end

Then /^I should get a CTA to find workouts$/ do
  page.should have_content "FIND WORKOUTS"
end

Then /^I should get a CTA to create workouts$/ do
  page.should have_content "CREATE WORKOUT"
end