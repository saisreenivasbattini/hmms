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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140329145014) do

  create_table "confidential_infos", force: true do |t|
    t.string   "practice_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "email"
    t.integer  "qualified_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eusers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

  create_table "listings", force: true do |t|
    t.string   "state"
    t.string   "region"
    t.string   "type_of_practice"
    t.decimal  "average_annual_collections"
    t.integer  "average_annual_visits"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.decimal  "low"
    t.decimal  "high"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mm_ranges", force: true do |t|
    t.decimal  "low"
    t.decimal  "high"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
    t.integer  "region_id"
  end

  create_table "practices", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type_of_doctor"
    t.string   "licence_no"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_informations", force: true do |t|
    t.string   "practice_name"
    t.decimal  "avg_annual_collection"
    t.integer  "avg_annual_visits"
    t.integer  "state_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_infos", force: true do |t|
    t.string   "practice_name"
    t.decimal  "avg_annual_collection"
    t.integer  "avg_annual_visits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualified_infos", force: true do |t|
    t.decimal  "asking_price"
    t.decimal  "physician_net_amount"
    t.integer  "public_information_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "license_number",         default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "middle_name",            default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "role_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
