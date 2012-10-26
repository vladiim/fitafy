Dir[File.dirname(__FILE__) + '/seed_files/**/*.rb'].each { |file| require file }

Workout.all.map(&:delete)
Exercise.all.map(&:delete)
WorkoutExercise.all.map(&:delete)

# First create all the Exercises
create_chest
create_back
create_shoulders
create_legs
create_quadriceps
create_glutes
create_hamstrings
create_calves
create_triceps
create_biceps
create_forearms
create_core
create_full_body
create_neck
create_torso

@fitafy = User.find_or_create_by_email "rob@fitafy.com", username: "fitafy", password: "password", password_confirmation: "password", terms_of_service: "true"
@fitafy.role = "admin"
@fitafy.save!

# Then create workouts which rely on Exercises to exsist
create_workouts