@names  	 = ["the big bad workout", "philly special", "superman", "driving miss daisy", "easy rider", "bricks and mortar", "a hard day's work", "no walk special"]
NOTES 	   = "Keep the workout popin' or be dropin'"

def random_exercise_note
  options = [
    "and mic bites I swing swords and cut clowns",
    "They bubble weight in Far Rockaway with Blake Carrington",
    "Watch for taped conversations, Jakes and dollar bands",
    "Hip hop, like socialize",
  ]
  options[rand options.length]
end

def random_exercise_id
  ex_id = Random.rand Exercise.all.count

  # exercise_id can't be 0
  if ex_id == 0
    ex_id += 1
  else
  	ex_id
  end
end

def random_set
  Random.rand 2..8
end

def create_workout_exercises workout
  5.times do
    workout.workout_exercises.create(
      exercise_id: random_exercise_id,
      sets: 	     random_set,
      notes:       random_exercise_note         
    )
  end
end

def create_workouts
  @names.each do |name|
    workout = Workout.find_or_create_by_name(
    	name:  name,
    	notes: NOTES,
    )
    create_workout_exercises workout
  end
end