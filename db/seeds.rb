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

# Then create workouts which rely on Exercises to exsist
# create_workouts