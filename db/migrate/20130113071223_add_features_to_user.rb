class AddFeaturesToUser < ActiveRecord::Migration
  def change
    add_column :users, :features, :hstore
  end
end
