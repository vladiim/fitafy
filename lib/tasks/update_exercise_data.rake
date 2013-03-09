desc "Updates the exercises"
task update_exercises: :environment do
  seed_files.each { |file| require file }
  create_chest
  create_back
  create_shoulders
  create_legs
  create_quadriceps
  create_glutes
  # create_hamstrings
  create_calves
  create_triceps
  create_biceps
  create_forearms
  create_core
  create_full_body
  # create_neck
  create_torso
end

def seed_files
  Dir[Dir.pwd + "/db/seed_files/exercises/*.rb"]
end