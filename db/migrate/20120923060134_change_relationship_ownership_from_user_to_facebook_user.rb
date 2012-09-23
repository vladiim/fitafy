class ChangeRelationshipOwnershipFromUserToFacebookUser < ActiveRecord::Migration
  def up
  	remove_column :facebook_users, :user_id
  	add_column :users, :facebook_user_id, :integer
  end

  def down
  	add_column :facebook_users, :user_id, :integer
  	remove_column :users, :facebook_user_id
  end
end
