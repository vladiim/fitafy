Given /^I've created a workout with exercises$/ do
  @workout          = create(:workout, user_id: @active_trainer.id)
  @workout_exercise = create(:workout_exercise, workout_id: @workout.id)
end