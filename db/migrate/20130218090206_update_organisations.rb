class UpdateOrganisations < ActiveRecord::Migration
  def up
  	remove_column :profiles, :organisation_id
  end

  def down
  	add_column :profiles, :organisation_id, :integer
  end
end
