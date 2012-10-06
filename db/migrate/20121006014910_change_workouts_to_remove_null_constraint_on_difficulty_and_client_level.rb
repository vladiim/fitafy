class ChangeWorkoutsToRemoveNullConstraintOnDifficultyAndClientLevel < ActiveRecord::Migration
  def up
  	remove_column :workouts, :difficulty
  	remove_column :workouts, :client_level
  	add_column :workouts, :difficulty, :string
  	add_column :workouts, :client_level, :string
  end

  def down
  	remove_column :workouts, :difficulty
  	remove_column :workouts, :client_level
  	add_column :workouts, :difficulty, :string, null: false
  	add_column :workouts, :client_level, :string, null: false
  end
end
