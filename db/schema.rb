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

ActiveRecord::Schema.define(version: 2018_11_16_162119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breads", force: :cascade do |t|
    t.string "name"
    t.bigint "eater_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eater_id"], name: "index_breads_on_eater_id"
    t.index ["sandwich_id"], name: "index_breads_on_sandwich_id"
  end

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.bigint "eater_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eater_id"], name: "index_cheeses_on_eater_id"
    t.index ["sandwich_id"], name: "index_cheeses_on_sandwich_id"
  end

  create_table "eaters", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "greens", force: :cascade do |t|
    t.string "name"
    t.bigint "eater_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eater_id"], name: "index_greens_on_eater_id"
    t.index ["sandwich_id"], name: "index_greens_on_sandwich_id"
  end

  create_table "meats", force: :cascade do |t|
    t.string "name"
    t.bigint "eater_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eater_id"], name: "index_meats_on_eater_id"
    t.index ["sandwich_id"], name: "index_meats_on_sandwich_id"
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string "name"
    t.boolean "toast"
    t.boolean "grill"
    t.boolean "open_face"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spreads", force: :cascade do |t|
    t.string "name"
    t.bigint "eater_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eater_id"], name: "index_spreads_on_eater_id"
    t.index ["sandwich_id"], name: "index_spreads_on_sandwich_id"
  end

  add_foreign_key "breads", "eaters"
  add_foreign_key "breads", "sandwiches"
  add_foreign_key "cheeses", "eaters"
  add_foreign_key "cheeses", "sandwiches"
  add_foreign_key "greens", "eaters"
  add_foreign_key "greens", "sandwiches"
  add_foreign_key "meats", "eaters"
  add_foreign_key "meats", "sandwiches"
  add_foreign_key "spreads", "eaters"
  add_foreign_key "spreads", "sandwiches"
end
