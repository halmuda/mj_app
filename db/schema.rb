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

ActiveRecord::Schema.define(version: 2019_02_16_151915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_users_on_event_id"
    t.index ["user_id"], name: "index_event_users_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "day"
  end

  create_table "records", force: :cascade do |t|
    t.text "description"
    t.integer "event_id"
    t.integer "rule_id"
    t.integer "user1_id"
    t.integer "user2_id"
    t.integer "user3_id"
    t.integer "user4_id"
    t.float "point1"
    t.float "point2"
    t.float "point3"
    t.float "point4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "genten"
    t.float "kaeshiten"
    t.string "uma"
    t.string "yakitori"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_users", "events"
  add_foreign_key "event_users", "users"
end
