class RemoveNotNullFromUserPassword < ActiveRecord::Migration
  def up
  	remove_column :users, :crypted_password
  	add_column :users, :crypted_password, :string
  end

  def down
  	remove_column :users, :crypted_password
  	add_column :users, :crypted_password, :string, null: false
  end
end
