Dir[File.dirname(__FILE__) + '/seed_files/**/*.rb'].each { |file| require file }

# First create all the Exercises
create_back
# create_biceps
# create_chest
# create_core
# create_forearms
# create_legs
# create_shoulders
# create_triceps

@rza = User.find_or_create_by_email "rza@wu.com", username: "rza", password: "password", password_confirmation: "password"
@rza.role = "admin"
@rza.save!

# Then create workouts which rely on Exercises to exsist
create_workouts