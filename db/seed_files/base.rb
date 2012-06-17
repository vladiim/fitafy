Dir['exercise/*.rb'].each { |file| require file }

module SeedModulesBase

  EXERCISE_MODULES = []
  
  def load_exercise_modules
    Dir['exercise/*.rb'].each do |file|
      module_name = "Exercise#{file.basename.modularize}"
      EXERCISE_MODULES << module_name
    end
  end
  
  def include_all_exercise_modules
    EXERCISE_MODULES.each { |m| include m }
  end

  def create_all_exercises
    EXERCISE_MODULES.each { |m| m.create }
  end
end