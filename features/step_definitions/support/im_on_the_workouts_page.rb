Given /^I'm on a workout's page$/ do
  trainer = @workout.user
  visit user_workout_path(trainer, @workout)
end