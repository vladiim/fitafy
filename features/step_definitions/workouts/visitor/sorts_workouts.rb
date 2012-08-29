Given /^there's workouts$/ do
  Exercise::MUSCLES.each do |exercise_name|
  	exercise = create :exercise, name: exercise_name
  	workout = create :workout, name: "#{exercise_name} title"
  	create :workout_exercise, exercise_id: exercise.id, workout_id: workout.id
  end
end