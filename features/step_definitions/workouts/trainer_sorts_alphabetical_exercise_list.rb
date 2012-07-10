Given /^there's alphabetical exercises$/ do
  create_exercise alphabetical_exercises
end

Given /^I'm going to create a workout$/ do
  visit new_workout_path
end

When /^I sort the exercises$/ do
  click_link "ABS"
end

Then /^I should see them in alphabetical order$/ do
  page.should have_selector "tr#workout_exercises_fields:nth-child(1)", content: "Aaaa"
  page.should have_selector "tr#workout_exercises_fields:nth-child(2)", content: "Bbbb"
  page.should have_selector "tr#workout_exercises_fields:nth-child(3)", content: "Cccc"
end