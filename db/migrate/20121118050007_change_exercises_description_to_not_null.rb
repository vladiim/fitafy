class ChangeExercisesDescriptionToNotNull < ActiveRecord::Migration
  def up
  	remove_column :exercises, :description
  	add_column :exercises, :description, :text
  end

  def down
  	remove_column :exercises, :description
  	add_column :exercises, :description, :text, null: false
  end
end
