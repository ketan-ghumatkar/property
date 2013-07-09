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

ActiveRecord::Schema.define(:version => 20130618183842) do

  create_table "messages", :force => true do |t|
    t.string   "sender_name"
    t.string   "country"
    t.string   "city"
    t.string   "email"
    t.string   "phone"
    t.string   "price_range"
    t.string   "property_type"
    t.string   "buying_year"
    t.string   "locality"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "messages", ["user_id"], :name => "index_messages_on_user_id"

  create_table "profiles", :force => true do |t|
    t.string   "city"
    t.string   "mobile"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "properties", :force => true do |t|
    t.string   "type"
    t.string   "subtype"
    t.string   "transaction_type"
    t.string   "city"
    t.string   "locality"
    t.string   "bedroom"
    t.string   "bathroom"
    t.string   "furnish"
    t.string   "covered_area"
    t.string   "plot_area"
    t.string   "carpet_area"
    t.string   "total_price"
    t.string   "unit_price"
    t.boolean  "display_price"
    t.integer  "floor"
    t.integer  "total_floor"
    t.text     "description"
    t.string   "possession_status"
    t.string   "spam_check"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "properties", ["user_id"], :name => "index_properties_on_user_id"

  create_table "requirements", :force => true do |t|
    t.string   "type"
    t.string   "subtype"
    t.string   "city"
    t.string   "min_area"
    t.string   "max_area"
    t.string   "min_budget"
    t.string   "max_budget"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "requirements", ["user_id"], :name => "index_requirements_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
