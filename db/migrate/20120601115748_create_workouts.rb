class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.text :notes, null: false
      t.text :exercises

      t.timestamps
    end
    add_index :workouts, :name
    add_index :workouts, :exercises
  end
end
