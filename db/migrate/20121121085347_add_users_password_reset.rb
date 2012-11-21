class AddUsersPasswordReset < ActiveRecord::Migration
  def up
  	add_column :users, :perishable_token, :string, default: ""
  end

  def down
  	remove_column :users, :perishable_token
  end
end
