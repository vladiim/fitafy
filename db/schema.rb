# encoding: UTF-8

ActiveRecord::Schema.define(:version => 20120601115748) do

  create_table "exercises", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description", :null => false
    t.text     "tips"
    t.string   "categories"
    t.string   "equipment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "exercises", ["categories"], :name => "index_exercises_on_categories"
  add_index "exercises", ["name"], :name => "index_exercises_on_name"

  create_table "workouts", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "notes",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "workouts", ["name"], :name => "index_workouts_on_name"

end