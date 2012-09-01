class ChangeWorkoutExercisesNotesToInstructions < ActiveRecord::Migration
  def up
  	remove_column :workout_exercises, :notes
  	add_column :workout_exercises, :instructions, :text
  end

  def down
  	add_column :workout_exercises, :notes, :text
  	remove_column :workout_exercises, :instructions
  end
end
