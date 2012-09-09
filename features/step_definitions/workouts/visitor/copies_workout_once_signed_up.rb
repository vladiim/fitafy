Then /^I should be back on the workout$/ do
  current_path.should eq user_workout_path(@workout.user, @workout)
end