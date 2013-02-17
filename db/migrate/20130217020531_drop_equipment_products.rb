class DropEquipmentProducts < ActiveRecord::Migration
  def change
  	drop_table :equipment_products
  end
end
