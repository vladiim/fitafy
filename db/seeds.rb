Dir[File.dirname(__FILE__) + '/seed_files/**/*.rb'].each { |file| require file }

# ----------------------------------
# DELETE ALL
# ----------------------------------
# Workout.all.map(&:delete)
# Exercise.all.map(&:delete)
# WorkoutExercise.all.map(&:delete)

# ----------------------------------
# UPDATE/CREATE EXERCISES
# ----------------------------------
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

# ----------------------------------
# CREATE USER
# ----------------------------------
# @fitafy = User.find_or_create_by_email "rob@fitafy.com", username: "fitafy", password: "password", password_confirmation: "password", terms_of_service: "true"
# @fitafy.role = "admin"
# @fitafy.save!

# ----------------------------------
# CREATE WORKOUTS
# ----------------------------------
# create_workouts