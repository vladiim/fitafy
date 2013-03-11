class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :experience
      t.integer :organisation_id
      t.string :avatar
      t.integer :hourly_rate
      t.string :url

      t.timestamps
    end
    add_index :profiles, :user_id
    add_index :profiles, :organisation_id
  end
end
