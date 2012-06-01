module CreateArelWorkout

  def create_workout deets
  	Workout.create(name:  deets,
  				   notes: deets
  	)
  end
end