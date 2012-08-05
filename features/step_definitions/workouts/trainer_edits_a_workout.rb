Given /^I want to update a workout's details$/ do
  FactoryGirl.create :workout_exercise
end

When /^I'm on the edit workout page$/ do
  trainer = User.last
  login trainer
  workout = Workout.last
  visit edit_user_workout_path(trainer, workout)
end

Then /^Snapz should give me the "(.*?)" edit workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end