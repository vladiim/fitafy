class WorkoutPopularity < ActiveRecord::Migration
  def change
  	create_table :workout_popularities do |t|
  	  t.integer :workout_id
  	  t.integer :pdfs_downloaded, default: 0
  	  t.integer :views, default: 0
  	  t.integer :unique_member_views, default: 0
  	  t.integer :copies, default: 0
  	  t.integer :favorites, default: 0
      t.timestamps
  	end
  end
end
