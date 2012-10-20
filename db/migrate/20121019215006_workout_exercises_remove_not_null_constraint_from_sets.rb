class WorkoutExercisesRemoveNotNullConstraintFromSets < ActiveRecord::Migration
  def up
  	remove_column :workout_exercises, :sets
  	add_column :workout_exercises, :sets, :integer
  end

  def down
  	remove_column :workout_exercises, :sets
  	add_column :workout_exercises, :sets, :integer
  end
end
