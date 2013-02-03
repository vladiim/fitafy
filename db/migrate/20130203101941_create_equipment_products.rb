class CreateEquipmentProducts < ActiveRecord::Migration
  def change
  	create_table :equipment_products do |t|
  	  t.integer :equipment_id
  	  t.integer :product_id
  	  t.timestamps
  	end
  	add_index :equipment_products, :equipment_id
  	add_index :equipment_products, :product_id
  end
end
