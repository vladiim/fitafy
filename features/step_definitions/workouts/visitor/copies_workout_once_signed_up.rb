Then /^I should have the workout copied$/ do
  @copied_workout = Workout.last
  current_path.should eq edit_user_workout_path(@trainer, @copied_workout)
end