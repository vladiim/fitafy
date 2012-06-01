class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.text :notes, null: false

      t.timestamps
    end
    add_index :workouts, :name
  end
end
