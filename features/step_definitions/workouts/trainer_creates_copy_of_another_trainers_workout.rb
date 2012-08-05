# Given /^another trainer has created a workout$/ do
#   create_workout
#   click_link "LOGOUT"
# end

When /^I go to the workout's page$/ do
  @me = FactoryGirl.create :trainer
  workout = Workout.first
  visit workouts_path
  click_link workout.name.titleize
end

When /^click create copy$/ do
  pending 'figure out how to apply a create copy link'
  click_link "CREATE COPY"
end

Then /^I should have a copy of the workout I can edit$/ do
  workout = Workout.last
  current_path.should eq edit_user_workout_path(@me, workout)
end

Then /^Snapz should let me know I've copied the workout$/ do
  pending # express the regexp above with the code you wish you had
end