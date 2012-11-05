class ChangeWorkoutExercisesOrderToOrderNumber < ActiveRecord::Migration
  def up
  	rename_column :workout_exercises, :order, :order_number
  end

  def down
  	rename_column :workout_exercises, :order_number, :order
  end
end
