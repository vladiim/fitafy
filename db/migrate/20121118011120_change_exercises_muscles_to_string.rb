class ChangeExercisesMusclesToString < ActiveRecord::Migration
  def up
    add_column    :exercises, :muscle, :string
  end

  def down
    remove_column :exercises, :muscle
  end
end