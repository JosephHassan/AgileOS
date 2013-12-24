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

ActiveRecord::Schema.define(version: 20131224223626) do

  create_table "epics", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "Product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "epics", ["Product_id"], name: "index_epics_on_Product_id"

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "target_release_date"
    t.string   "status"
    t.integer  "Product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "releases", ["Product_id"], name: "index_releases_on_Product_id"

  create_table "sprints", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "Release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sprints", ["Release_id"], name: "index_sprints_on_Release_id"

  create_table "stories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "estimate"
    t.integer  "epic_id"
    t.integer  "product_id"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "story_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
