Given /^a workout exsists$/ do
  @workout_exercise = create :workout_exercise
  @workout          = @workout_exercise.workout
end