class AddGymAndBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gym, :string, default: 'No gym listed'
    add_column :users, :bio, :text, default: 'No bio given.'
  end
end
