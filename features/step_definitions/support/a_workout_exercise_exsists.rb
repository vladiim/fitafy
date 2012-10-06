Given /^a workout exercise exists$/ do
  @workout = create :workout, user_id: @trainer.id
  @workout_exercise = create :workout_exercise, workout_id: @workout.id
  @exercise = @workout_exercise.exercise
  visit user_workout_path(@trainer, @workout)
end