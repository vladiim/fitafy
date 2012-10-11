Given /^I've gone to a workout show page$/ do
  create :workout_exercise
  trainer = User.last
  workout = Workout.last
  visit user_workout_path(trainer, workout)
end

When /^I click on an exercise in the workout's list$/ do
  click_link "Liquid"
end

Then /^I should go the that exercise's page$/ do
  page.should have_css "h1", content: "Liquid"
end