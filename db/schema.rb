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

ActiveRecord::Schema.define(version: 2020_07_21_195724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gathers", force: :cascade do |t|
    t.datetime "event_start"
    t.datetime "event_end"
    t.string "event_name"
    t.string "host_name"
    t.text "event_desc"
    t.text "venue_detail"
    t.bigint "venue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["venue_id"], name: "index_gathers_on_venue_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.date "event_date"
    t.string "event_time"
    t.date "purchase_date"
    t.decimal "purchase_price"
    t.string "scan_code"
    t.string "section"
    t.string "aisle"
    t.string "seat"
    t.bigint "gather_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gather_id"], name: "index_tickets_on_gather_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "fname"
    t.string "lname"
    t.string "company"
    t.string "addr1"
    t.string "addr2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "level"
    t.string "permission"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "addr1"
    t.string "addr2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "contact"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "gathers", "venues"
  add_foreign_key "tickets", "gathers"
  add_foreign_key "tickets", "users"
end
