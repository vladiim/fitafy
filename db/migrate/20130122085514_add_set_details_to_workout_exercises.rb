class AddSetDetailsToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :set_details, :hstore
  end
end
