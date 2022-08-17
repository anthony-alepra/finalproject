# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_17_165311) do

  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_applications", force: :cascade do |t|
    t.string "dev_email"
    t.string "dev_name"
    t.string "game_name"
    t.boolean "multiplayer"
    t.string "game_description"
    t.string "why_playtest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.integer "game_id"
    t.index ["event_id"], name: "index_event_applications_on_event_id"
    t.index ["game_id"], name: "index_event_applications_on_game_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_events_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "multiplayer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "developer_id"
    t.index ["developer_id"], name: "index_games_on_developer_id"
  end

  create_table "player_register_forms", force: :cascade do |t|
    t.string "player_email"
    t.string "player_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
    t.index ["player_id"], name: "index_player_register_forms_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_applications", "events"
  add_foreign_key "event_applications", "games"
  add_foreign_key "events", "games"
  add_foreign_key "games", "developers"
  add_foreign_key "player_register_forms", "players"
end
