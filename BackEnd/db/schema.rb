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

ActiveRecord::Schema.define(version: 2018_10_25_172835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advances", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "history_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["history_id"], name: "index_advances_on_history_id"
    t.index ["profile_id"], name: "index_advances_on_profile_id"
  end

  create_table "answers_alterantives", force: :cascade do |t|
    t.bigint "history_id"
    t.string "message"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["history_id"], name: "index_answers_alterantives_on_history_id"
  end

  create_table "histories", force: :cascade do |t|
    t.string "name"
    t.text "picture"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "history_cards", force: :cascade do |t|
    t.bigint "history_id"
    t.text "picture"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["history_id"], name: "index_history_cards_on_history_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "advances", "histories"
  add_foreign_key "advances", "profiles"
  add_foreign_key "answers_alterantives", "histories"
  add_foreign_key "history_cards", "histories"
end
