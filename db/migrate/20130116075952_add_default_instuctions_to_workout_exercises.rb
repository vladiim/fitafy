class AddDefaultInstuctionsToWorkoutExercises < ActiveRecord::Migration
  def up
  	change_column :workout_exercises, :instructions, :text, default: "No instructions added yet"
  end

  def down
  	change_column :workout_exercises, :instructions, :text, default: nil
  end
end
