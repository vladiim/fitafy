class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  	  t.string :name
  	  t.string :retailer
  	  t.string :image
  	  t.float :price
  	  t.string :analytics_link
  	  t.string :affiliate_link
  	  t.timestamps
  	end
  	add_index :products, :name
  end
end
