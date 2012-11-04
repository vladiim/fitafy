class AddOrderToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :order, :integer
  end
end
