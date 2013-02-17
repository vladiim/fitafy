When /^I visit the workout page$/ do
  visit_workout @workout
end

Then /^the workout's view popularity number increases$/ do
  WorkoutPopularity.last.views.should eq 1
end