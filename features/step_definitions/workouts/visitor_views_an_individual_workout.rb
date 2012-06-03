Given /^a workout exsists$/ do
  @workout = create_workout
end

When /^I visit the workout's page$/ do
  # already on the workout's page
end

Then /^I should see that workout's details "(.*?)" and "(.*?)"$/ do |workout_name, workout_notes|
  page.should have_content workout_name
  page.should have_content workout_notes
end