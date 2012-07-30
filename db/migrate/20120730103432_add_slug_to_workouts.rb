class AddSlugToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :slug, :string
    add_index :workouts, :slug
  end
end
