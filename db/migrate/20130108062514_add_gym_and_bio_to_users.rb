class AddGymAndBioToUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :gym
  	remove_column :users, :bio
    add_column :users, :gym, :string, default: 'No gym listed'
    add_column :users, :bio, :text, default: 'No bio given.'
  end

  def down
  	remove_column :users, :gym
  	remove_column :users, :bio
  end
end
