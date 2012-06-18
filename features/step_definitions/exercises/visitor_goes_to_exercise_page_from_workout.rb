Given /^I've gone to a workout show page$/ do
  create_workout
  visit workouts_path
  click_link "Zno Said Date"
end

When /^I click on an exercise in the workout's list$/ do
  click_link "Liquid Swords"
end

Then /^I should go the that exercise's page$/ do
  page.should have_css "h1", content: "Liquid Swords"
end