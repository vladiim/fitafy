class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :street
      t.string :suburb
      t.string :city
      t.string :state
      t.string :country
      t.integer :postcode

      t.timestamps
    end
  end
end
