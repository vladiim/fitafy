class AddSluggedToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :slug, :string, unique: true
    add_index :exercises, :slug
  end
end
