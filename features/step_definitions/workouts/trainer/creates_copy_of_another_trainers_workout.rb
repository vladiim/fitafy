When /^I go to the workout's page$/ do
  click_link "LOGOUT"
  @me = FactoryGirl.create :trainer
  login @me
  @original_workout = Workout.last
  visit workouts_path
  click_link @original_workout.name
end

When /^click create copy$/ do
  click_link "CREATE COPY"
end

Then /^I should have a copy of the workout I can edit$/ do
  @copied_workout = Workout.last
  current_path.should eq user_workout_path(@me, @copied_workout)
end

Then /^Snapz should let me know I've copied the workout$/ do
  page.should have_content "#{@original_workout.name.titleize} has been copied to your workouts, like Wu said: it's yourz!"
end

Then /^it should copy all the original workout's attributes$/ do
  @copied_workout.name.should eq @original_workout.name
  @copied_workout.notes.should eq @original_workout.notes
  @copied_workout.client_level.should eq @original_workout.client_level
  @copied_workout.difficulty.should eq @original_workout.difficulty
  @copied_workout.exercises.should eq @original_workout.exercises
end