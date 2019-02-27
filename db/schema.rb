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

ActiveRecord::Schema.define(version: 2019_02_27_143018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inscriptions", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_inscriptions_on_team_id"
    t.index ["tournament_id"], name: "index_inscriptions_on_tournament_id"
  end

  create_table "team_players", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_players_on_team_id"
    t.index ["user_id"], name: "index_team_players_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "tournaments", force: :cascade do |t|
    t.date "date"
    t.string "serie"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.text "remarques"
    t.integer "equipe_tableau_principal"
    t.integer "wildcard_principal"
    t.integer "place_reservees_qualif"
    t.integer "equipe_qualif"
    t.integer "wildcard_qualif"
    t.integer "terrains_normes"
    t.date "date_qualif"
    t.date "date_principal"
    t.integer "prize_money"
    t.string "split_prize_money"
    t.date "limit_inscription"
    t.datetime "reunion_qualif"
    t.datetime "reunion_principal"
    t.string "ville"
    t.string "club_organisateur"
    t.string "contact"
    t.boolean "genre"
    t.string "sku"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "license_no"
    t.date "birth_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "inscriptions", "teams"
  add_foreign_key "inscriptions", "tournaments"
  add_foreign_key "team_players", "teams"
  add_foreign_key "team_players", "users"
end
