Given /^I'm on the homepage$/ do
  visit root_path
end

When /^I visit the workout's page$/ do
  trainer = @workout.user
  visit user_workout_path(trainer, @workout)
end

Then /^I should see that workout's details "(.*?)" and "(.*?)"$/ do |workout_name, workout_notes|
  page.should have_content workout_name
  page.should have_content workout_notes
end