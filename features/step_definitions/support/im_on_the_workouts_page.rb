Given /^I'm on a workout's page$/ do
  workout = Workout.last
  visit workouts_path
  click_link workout.name.titleize
end