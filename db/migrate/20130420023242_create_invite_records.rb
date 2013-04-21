class CreateInviteRecords < ActiveRecord::Migration
  def change
  	create_table :invite_records do |t|
  	  t.integer :sender_id, null: false
  	  t.integer :receiver_id, null: false
      t.text :message, default: "I just signed up to a new service that gets fitness professionals new clients. I thought you'd like to check it out!"
  	  t.boolean :accepted, default: false
  	  t.timestamps
  	end
  	add_index :invite_records, :sender_id
  	add_index :invite_records, :receiver_id
  end
end