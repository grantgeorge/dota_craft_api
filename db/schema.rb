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

ActiveRecord::Schema.define(version: 20150520041647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heroes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "base_movement"
    t.integer  "base_str"
    t.integer  "base_int"
    t.integer  "base_agi"
    t.integer  "str_per_level"
    t.integer  "int_per_level"
    t.integer  "agi_per_level"
    t.integer  "base_min_damage"
    t.integer  "base_max_damage"
    t.integer  "base_armor"
    t.integer  "day_sight_range"
    t.integer  "night_sight_range"
    t.integer  "attack_range"
    t.integer  "missle_speed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "spells", force: :cascade do |t|
    t.integer  "hero_id"
    t.integer  "mana_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spells", ["hero_id"], name: "index_spells_on_hero_id", using: :btree

  add_foreign_key "spells", "heroes"
end
