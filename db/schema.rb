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

ActiveRecord::Schema.define(version: 2018_12_06_202627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispatches", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.decimal "latStart", precision: 15, scale: 10
    t.decimal "longStart", precision: 15, scale: 10
    t.decimal "latEnd", precision: 15, scale: 10
    t.decimal "longEnd", precision: 15, scale: 10
    t.bigint "dispatch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispatch_id"], name: "index_rides_on_dispatch_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.bigint "ride_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ride_id"], name: "index_technicians_on_ride_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "rider"
    t.string "contact"
    t.decimal "lat", precision: 15, scale: 10
    t.decimal "lng", precision: 15, scale: 10
    t.string "ttype"
    t.datetime "startTime"
    t.datetime "endTime"
    t.string "status"
    t.bigint "ride_id"
    t.bigint "technician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ride_id"], name: "index_tickets_on_ride_id"
    t.index ["technician_id"], name: "index_tickets_on_technician_id"
  end

end
