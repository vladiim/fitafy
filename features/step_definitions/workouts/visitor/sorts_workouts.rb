Given /^there's workouts$/ do
  pending "sort workout by exercise tag"
  Exercise::MUSCLES.each do |exercise_name|
  	exercise = FactoryGirl.create :exercise, name: exercise_name
  	workout = FactoryGirl.create :workout, name: "#{exercise_name} title"
  	FactoryGirl.create :workout_exercise, exercise_id: exercise.id, workout_id: workout.id
  end
end