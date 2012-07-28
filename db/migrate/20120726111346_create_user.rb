class CreateUser < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  	  t.string :username, null: false
  	  t.string :email, null: false
  	  t.string :crypted_password, null: false
  	  t.string :password_salt
  	  t.string :persistence_token
  	  t.integer :login_count
  	  t.timestamps
  	end
  	add_index :users, :username
  	add_index :users, :email
  end
end