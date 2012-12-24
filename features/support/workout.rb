module VisitWorkout

  def visit_workout(workout)
  	visit users_workout_path(workout.username, workout)
  end

end

World VisitWorkout