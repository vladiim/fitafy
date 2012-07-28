Given /^I want to update a workout's details$/ do
  create_workout
end

When /^I'm on the edit workout page$/ do
  workout = Workout.last
  visit edit_workout_path(workout)
end

Then /^Snapz should give me the "(.*?)" edit workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end