class ChangeExerciseEquipmentToEquipmentId < ActiveRecord::Migration
  def up
  	remove_column :exercises, :equipment
  	add_column :exercises, :equipment_id, :integer
  end

  def down
    add_column :exercises, :equipment, :text
    remove_column :exercises, :equipment_id
  end
end
