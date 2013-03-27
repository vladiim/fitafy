class CreateUserRecords < ActiveRecord::Migration
  def change
  	create_table :user_records do |t|
  	  t.string :email, null: false
  	  t.timestamps
  	end
  end
end