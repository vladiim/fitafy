class CreateWorkoutExercise < ActiveRecord::Migration
  def change
  	create_table :workout_exercises do |t|
      t.integer :workout_id, null: false
      t.integer :exercise_id, null: false
      t.integer :sets, null: false
      t.string :rep_weight
      t.string :rep_time
      t.timestamps
  	end
  	add_index :workout_exercises, :workout_id
  	add_index :workout_exercises, :exercise_id
  end
end