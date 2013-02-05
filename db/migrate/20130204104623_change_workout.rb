class ChangeWorkout < ActiveRecord::Migration
  def up
  	change_column :workouts, :difficulty, :string, default: "None..."
  	change_column :workouts, :client_level, :string, default: "None..."
  	change_column :workouts, :notes, :text, default: "No notes for this workout yo..."
  end

  def down
  	change_column :workouts, :difficulty, :string, default: nil
  	change_column :workouts, :client_level, :string, default: nil
  	change_column :workouts, :notes, :text, default: nil
  end
end