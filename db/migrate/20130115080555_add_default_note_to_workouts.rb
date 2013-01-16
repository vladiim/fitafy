class AddDefaultNoteToWorkouts < ActiveRecord::Migration
  def up
  	change_column :workouts, :notes, :text, default: 'No notes for this workout yo...'
  end

  def down
  	change_column :workouts, :notes, :text, default: nil
  end
end
