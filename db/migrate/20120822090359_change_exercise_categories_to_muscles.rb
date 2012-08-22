class ChangeExerciseCategoriesToMuscles < ActiveRecord::Migration

  def up
  	remove_column :exercises, :categories
  	add_column :exercises, :muscles, :string
  end

  def down
  	remove_column :exercises, :muscles
  	add_column :exercises, :categories, :string
  end
end