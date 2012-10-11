DisplayCase.configure do |config|
  config.explicit = true
  config.exhibits = [WorkoutExhibit, CurrentUserOwnedWorkoutExhibit]
end