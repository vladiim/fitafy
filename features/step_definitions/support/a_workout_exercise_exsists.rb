Given /^a workout exercise exists$/ do
  @workout = create :workout, user_id: @active_trainer.id
  @workout_exercise = create :workout_exercise, workout_id: @workout.id
  @exercise = @workout_exercise.exercise
  visit user_workout_path(@active_trainer, @workout)
end