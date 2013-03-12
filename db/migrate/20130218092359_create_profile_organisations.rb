class CreateProfileOrganisations < ActiveRecord::Migration
  def change
    create_table :profile_organisations do |t|
      t.integer :profile_id
      t.integer :organisation_id

      t.timestamps
    end
    add_index :profile_organisations, :profile_id
    add_index :profile_organisations, :organisation_id
  end
end
