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

ActiveRecord::Schema.define(version: 20140531034421) do

  create_table "agencies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "phone"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "overflows", force: true do |t|
    t.string   "item_type"
    t.boolean  "perishable"
    t.string   "quantity"
    t.datetime "expiration"
    t.text     "description"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "overflows", ["agency_id"], name: "index_overflows_on_agency_id"

end
