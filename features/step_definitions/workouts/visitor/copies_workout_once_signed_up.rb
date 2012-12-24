Then /^I should be back on the workout$/ do
  current_path.should eq users_workout_path(@workout.username, @workout)
end