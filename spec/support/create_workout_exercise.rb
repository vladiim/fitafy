module CreateWorkoutExercise

  def self.valid
  	[{ exercise_id: 1, sets: 3, reps: [1,2,3] }]
  end

  def self.valid_keys
  	[{ exercise_id: "", sets: "", no_said_date: "" }]
  end
end