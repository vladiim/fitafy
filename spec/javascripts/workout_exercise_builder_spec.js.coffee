describe "WorkoutExerciseBuilder", ->
  beforeEach ->
    @incomingJSON = '{
      "workout_exercise": {
        "workout_exercise_id": "1",
        "workout_id":          "1",
        "exercise_id":         "1",
        "sets":                "SETS",
        "instructions":        "INSTRUCTIONS",
        "order_number":        "1"
      }
    }'