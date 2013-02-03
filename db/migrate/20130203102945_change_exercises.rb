class ChangeExercises < ActiveRecord::Migration
  def up
  	change_column :exercises, :description, :text, default: "No description"
  	change_column :exercises, :category, :string, default: "No category"
  end

  def down
  	change_column :exercises, :description, :text, default: nil
  	change_column :exercises, :category, :string, default: nil
  end
end
