When /^I create a workout from the nav$/ do
  fill_in 'workout_name', with: 'NEW WORKOUT'
  click_button 'CREATE WORKOUT'
end

Then /^I should be on the new workouts page$/ do
  workout = Workout.last
  current_path.should eq users_workout_path(@active_trainer.username, workout)
end