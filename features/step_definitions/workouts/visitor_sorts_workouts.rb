EXERCISES = %w(Abs Back Biceps Chest Forearms Legs Shoulders Tricep)

Given /^there's workouts$/ do
  EXERCISES.each do |exercise_name|
  	exercise = FactoryGirl.create :exercise, name: exercise_name
  	workout = FactoryGirl.create :workout, name: "#{exercise_name.titleize} Title"
  	FactoryGirl.create :workout_exercise, exercise_id: exercise.id, workout_id: workout.id
  end
end