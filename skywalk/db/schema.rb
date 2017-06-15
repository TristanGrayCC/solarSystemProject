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

ActiveRecord::Schema.define(version: 20170615152820) do

  create_table "moons", force: :cascade do |t|
    t.text     "name"
    t.integer  "planet_id"
    t.integer  "size"
    t.integer  "orbit"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "image"
  end

  add_index "moons", ["planet_id"], name: "index_moons_on_planet_id"

  create_table "other_planetary_objects", force: :cascade do |t|
    t.text     "name"
    t.text     "typeofobject"
    t.integer  "size"
    t.integer  "distancefromsun"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "solar_region_id"
    t.text     "image"
  end

  add_index "other_planetary_objects", ["solar_region_id"], name: "index_other_planetary_objects_on_solar_region_id"

  create_table "planets", force: :cascade do |t|
    t.text     "name"
    t.text     "typeofplanet"
    t.integer  "size"
    t.integer  "distancefromsun"
    t.integer  "lengthofyear"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "image"
  end

  create_table "solar_regions", force: :cascade do |t|
    t.text     "name"
    t.integer  "size"
    t.integer  "distancefromsun"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "description"
  end

end
