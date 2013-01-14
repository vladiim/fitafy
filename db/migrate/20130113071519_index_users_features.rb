class IndexUsersFeatures < ActiveRecord::Migration
  def up
  	execute "CREATE INDEX users_features ON users USING GIN(features)"
  end

  def down
  	execute "DROP INDEX users_features"
  end
end
