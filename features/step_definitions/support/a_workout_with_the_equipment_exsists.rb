Given /^a workout with the equipment exsists$/ do
  exercise          = create :exercise, equipment: @equipment
  @workout_exercise = create :workout_exercise, exercise: exercise
  @workout          = @workout_exercise.workout
end