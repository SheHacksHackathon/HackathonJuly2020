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

ActiveRecord::Schema.define(version: 2020_07_21_180313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "event_start", null: false
    t.datetime "event_end"
    t.string "event_name", null: false
    t.string "host_name"
    t.text "event_desc"
    t.text "location_detail"
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "addr1", null: false
    t.string "addr2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip"
    t.string "contact"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.date "event_date", null: false
    t.string "event_time"
    t.date "issue_date", null: false
    t.decimal "purchase_price"
    t.string "scan_code"
    t.string "section"
    t.string "aisle"
    t.string "seat"
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "company"
    t.string "addr1", null: false
    t.string "addr2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.string "phone"
    t.string "email", null: false
    t.integer "level"
    t.integer "permission"
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "locations"
  add_foreign_key "tickets", "events"
  add_foreign_key "tickets", "users"
end
