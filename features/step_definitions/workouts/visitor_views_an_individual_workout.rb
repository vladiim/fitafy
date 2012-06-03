Given /^a workout exsists$/ do
  @workout = create_workout
end

When /^I visit the workout's page$/ do
  visit workout_path(@workout)
end

Then /^I should see that workout's details "(.*?)" and "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end