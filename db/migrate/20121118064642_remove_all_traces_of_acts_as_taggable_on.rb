class RemoveAllTracesOfActsAsTaggableOn < ActiveRecord::Migration
  def up
  	drop_table :taggings
  	remove_column :exercises, :muscles
  	remove_column :exercises, :type
  end

  def down
  end
end
