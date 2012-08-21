Given /^a workout exsists$/ do
  FactoryGirl.create :workout_exercise
  @workout = Workout.last
end