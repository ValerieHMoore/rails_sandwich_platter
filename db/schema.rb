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

ActiveRecord::Schema.define(version: 2018_11_16_185448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eaters", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "greens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string "name"
    t.boolean "toast"
    t.boolean "grill"
    t.boolean "open_face"
    t.bigint "eater_id"
    t.bigint "bread_id"
    t.bigint "spread_id"
    t.bigint "meat_id"
    t.bigint "cheese_id"
    t.bigint "green_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bread_id"], name: "index_sandwiches_on_bread_id"
    t.index ["cheese_id"], name: "index_sandwiches_on_cheese_id"
    t.index ["eater_id"], name: "index_sandwiches_on_eater_id"
    t.index ["green_id"], name: "index_sandwiches_on_green_id"
    t.index ["meat_id"], name: "index_sandwiches_on_meat_id"
    t.index ["spread_id"], name: "index_sandwiches_on_spread_id"
  end

  create_table "spreads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sandwiches", "breads"
  add_foreign_key "sandwiches", "cheeses"
  add_foreign_key "sandwiches", "eaters"
  add_foreign_key "sandwiches", "greens"
  add_foreign_key "sandwiches", "meats"
  add_foreign_key "sandwiches", "spreads"
end
