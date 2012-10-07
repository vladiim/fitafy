class ChangeWorkoutNotesToNotBeNullConstrained < ActiveRecord::Migration
  def up
  	remove_column :workouts, :notes
  	add_column :workouts, :notes, :text
  end

  def down
  	remove_column :workouts, :notes
  	add_column :workouts, :notes, :text, null: false
  end
end
