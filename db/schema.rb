# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130113071519) do

  create_table "equipment", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.string   "name",         :null => false
    t.text     "tips"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "slug"
    t.integer  "equipment_id"
    t.string   "muscle"
    t.string   "category"
    t.text     "description"
  end

  add_index "exercises", ["name"], :name => "index_exercises_on_name"
  add_index "exercises", ["slug"], :name => "index_exercises_on_slug"

  create_table "facebook_users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "cred_info"
  end

  create_table "favorite_workouts", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "workout_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "favorite_workouts", ["user_id"], :name => "index_favorite_workouts_on_user_id"
  add_index "favorite_workouts", ["workout_id"], :name => "index_favorite_workouts_on_workout_id"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                       :null => false
    t.string   "email",                                          :null => false
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "slug"
    t.string   "role"
    t.string   "crypted_password"
    t.integer  "facebook_user_id"
    t.string   "avatar"
    t.string   "perishable_token",  :default => ""
    t.boolean  "active"
    t.string   "gym",               :default => "No gym listed"
    t.text     "bio",               :default => "No bio given."
    t.hstore   "features"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["features"], :name => "users_features"
  add_index "users", ["slug"], :name => "index_users_on_slug"
  add_index "users", ["username"], :name => "index_users_on_username"

  create_table "workout_exercises", :force => true do |t|
    t.integer  "workout_id",                  :null => false
    t.integer  "exercise_id",                 :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.text     "instructions"
    t.integer  "sets",         :default => 1
    t.integer  "order_number", :default => 1
  end

  add_index "workout_exercises", ["exercise_id"], :name => "index_workout_exercises_on_exercise_id"
  add_index "workout_exercises", ["workout_id"], :name => "index_workout_exercises_on_workout_id"

  create_table "workouts", :force => true do |t|
    t.string   "name",         :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id",      :null => false
    t.string   "slug"
    t.string   "difficulty"
    t.string   "client_level"
    t.text     "notes"
  end

  add_index "workouts", ["name"], :name => "index_workouts_on_name"
  add_index "workouts", ["slug"], :name => "index_workouts_on_slug"
  add_index "workouts", ["user_id"], :name => "index_workouts_on_user_id"

end
