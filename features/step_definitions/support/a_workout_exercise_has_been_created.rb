Given /^a workout exercise has been created$/ do
  @workout = create :workout, user_id: @active_trainer.id
  @workout_exercise = create :workout_exercise, workout_id: @workout.id
  @exercise = @workout_exercise.exercise
  visit_workout(@workout)
end