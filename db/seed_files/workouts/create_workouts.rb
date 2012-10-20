@names     = ["philly special", "workout test", "another workout"]

def random_exercise_note
  options = [
    "And mic bites I swing swords and cut clowns",
    "They bubble weight in Far Rockaway with Blake Carrington",
    "Watch for taped conversations, Jakes and dollar bands",
    "Hip hop, like socialize",
  ]
  options[rand options.length]
end

def random_exercise_id
  Exercise.all.sample.id
end

def random_set
  Random.rand 8
end

def create_workout_exercises workout
  5.times do
    workout.workout_exercises.create!(
      exercise_id:  random_exercise_id,
      sets:         random_set,
      instructions: random_exercise_note         
    )
  end
end

def create_workouts
  @names.each do |name|
    workout = Workout.create!(
      name:         name,
      client_level: Workout::CLIENT_LEVELS[0],
      difficulty:   Workout::DIFFICULTY[1],
      user_id:      @fitafy.id
    )
    create_workout_exercises workout
  end
end