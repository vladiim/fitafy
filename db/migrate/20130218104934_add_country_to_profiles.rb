class AddCountryToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :country, :string, default: "No country listed"
  end
end
