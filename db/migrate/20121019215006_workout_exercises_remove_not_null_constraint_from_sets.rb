class WorkoutExercisesRemoveNotNullConstraintFromSets < ActiveRecord::Migration
  def up
  	remove_column :workout_exercises, :sets
  	add_column :workout_exercises, :sets, :string
  end

  def down
  	remove_column :workout_exercises, :sets
  	add_column :workout_exercises, :sets, :string, null: false
  end
end
