Given /^I'm on a workout's page$/ do
  @trainer = @workout.user
  visit users_workout_path(@workout.username, @workout)
end