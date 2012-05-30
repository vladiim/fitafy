class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.text :tips
      t.string :categories
      t.string :equipment

      t.timestamps
    end
    add_index :exercises, :name
    add_index :exercises, :categories
  end
end
