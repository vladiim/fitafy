class CreateFavoriteWorkouts < ActiveRecord::Migration
  def change
  	create_table :favorite_workouts do |t|
  	  t.references :user, null: false
  	  t.references :workout, null: false
  	  t.timestamps
  	end
  	add_index :favorite_workouts, :user_id
  	add_index :favorite_workouts, :workout_id
  end
end