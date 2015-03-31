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

ActiveRecord::Schema.define(version: 20150330050857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name",       null: false
    t.integer  "price",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "mail_address"
    t.string   "area"
    t.integer  "group_id"
    t.datetime "join_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.string   "staff_name"
    t.string   "custom_name"
    t.datetime "sale_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_details", force: true do |t|
    t.integer  "item_id",    null: false
    t.integer  "price",      null: false
    t.integer  "quantity",   null: false
    t.integer  "sale_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",         null: false
    t.string   "mail_address", null: false
    t.datetime "birthday",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_hobbies", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "hobby_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
