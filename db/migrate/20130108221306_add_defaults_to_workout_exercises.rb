class AddDefaultsToWorkoutExercises < ActiveRecord::Migration
  def up
  	change_column :workout_exercises, :order_number, :integer, default: 1
  	change_column :workout_exercises, :sets,  :integer, default: 1
  end

  def down
  	change_column :workout_exercises, :order_number, :integer, default: nil
  	change_column :workout_exercises, :sets,  :integer, default: nil
  end
end
