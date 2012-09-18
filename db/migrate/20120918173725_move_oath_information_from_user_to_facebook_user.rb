class MoveOathInformationFromUserToFacebookUser < ActiveRecord::Migration
  def up
  	change_table :users do |t|
  	  t.remove :provider
  	  t.remove :uid
  	  t.remove :oauth_token
  	  t.remove :oauth_expires_at
  	end

  	create_table :facebook_users do |t|
  	  t.string :provider
  	  t.string :uid
  	  t.string :oauth_token
  	  t.datetime :oauth_expires_at
  	  t.integer :user_id
  	  t.timestamps
  	end
  end

  def down
  	change_table :users do |t|
  	  t.string :provider
  	  t.string :uid
  	  t.string :oauth_token
  	  t.datetime :oauth_expires_at
  	end

  	drop_table :facebook_users
  end
end
