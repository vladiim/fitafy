class CreateEquipment < ActiveRecord::Migration
  def change
  	create_table :equipment do |t|
  	  t.string :name, null: false
      t.timestamps
  	end
  end
end
