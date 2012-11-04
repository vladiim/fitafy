class AddCredInfoToFacebookUsers < ActiveRecord::Migration
  def change
    add_column :facebook_users, :cred_info, :text
  end
end
