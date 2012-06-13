module CreateWorkoutExercise

  def self.valid
  	[{ id: 1, sets: 4, reps: [3,4,5] }, 
     { id: 3, sets: 5, reps: [] }]
  end

  def self.valid_keys
  	[{ exercise_id: "", sets: "", reps: "" }]
  end
end