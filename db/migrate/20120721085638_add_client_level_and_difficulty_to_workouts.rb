class AddClientLevelAndDifficultyToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :client_level, :string, null: false
    add_column :workouts, :difficulty, :string, null: false
  end
end
