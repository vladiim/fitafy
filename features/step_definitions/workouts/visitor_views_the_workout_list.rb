Given /^there are workouts$/ do
  visit root_path
  create_workout
end

When /^I click on the workout's link "(.*?)"$/ do |workout_link|
  click_link workout_link
end

Then /^I should see a list of workouts$/ do
  page.should have_content "No Said Date"
end

Then /^the "(.*?)" latest workouts should be listed by default$/ do |default_workouts_title|
  page.should have_content default_workouts_title
end

Then /^I should see how many exercises the workout has$/ do
  page.should have_content "1 exercise"
end