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

ActiveRecord::Schema.define(version: 20150810041707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "space_id"
    t.string   "datetime"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "calories"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "log_entries", force: :cascade do |t|
    t.string   "date"
    t.float    "distance"
    t.integer  "user_id"
    t.integer  "calories"
    t.integer  "steps"
    t.integer  "minutes_sedentary"
    t.integer  "minutes_lightly_active"
    t.integer  "minutes_fairly_active"
    t.integer  "minutes_very_active"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "login_reports", force: :cascade do |t|
    t.string   "username"
    t.integer  "timestamp"
    t.string   "ip"
    t.string   "time"
    t.string   "country"
    t.string   "city"
    t.string   "lat"
    t.string   "long"
    t.string   "hostname"
    t.string   "org"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "timeline_id"
    t.string   "author_name"
    t.string   "message"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "spaces", ["slug"], name: "index_spaces_on_slug", unique: true, using: :btree

  create_table "task_events", force: :cascade do |t|
    t.string   "date"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "space_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timelines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "space_id"
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "api_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_login"
  end

end
