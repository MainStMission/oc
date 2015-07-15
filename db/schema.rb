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

ActiveRecord::Schema.define(version: 20150715153221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "households", force: :cascade do |t|
    t.string   "household_name"
    t.string   "name"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.text     "box_type"
    t.text     "income1"
    t.decimal  "inc_amt1",                precision: 8, scale: 2
    t.text     "income2"
    t.decimal  "inc_amt2",                precision: 8, scale: 2
    t.text     "income3"
    t.decimal  "inc_amt3",                precision: 8, scale: 2
    t.text     "expense1"
    t.decimal  "exp_amt1",                precision: 8, scale: 2
    t.text     "expense2"
    t.decimal  "exp_amt2",                precision: 8, scale: 2
    t.text     "expense3"
    t.decimal  "exp_amt3",                precision: 8, scale: 2
    t.text     "option1"
    t.text     "opt_val1"
    t.text     "option2"
    t.text     "opt_val2"
    t.text     "notes"
    t.string   "street"
    t.string   "apt"
    t.string   "state"
    t.string   "city"
    t.string   "zip"
    t.string   "food_alert"
    t.string   "prayer_request"
    t.text     "money_notes"
    t.string   "special_needs"
    t.string   "how_heard"
    t.string   "proof_of_residency_type"
    t.date     "date_of_proof"
    t.boolean  "post_prayer"
    t.boolean  "post_needs"
    t.boolean  "christmas"
    t.boolean  "bool1"
    t.string   "bool_val1"
    t.boolean  "bool2"
    t.string   "bool_val2"
    t.boolean  "bool3"
    t.string   "bool_val3"
    t.boolean  "bool4"
    t.string   "bool_val4"
    t.boolean  "bool5"
    t.string   "bool_val5"
    t.string   "income4"
    t.decimal  "inc_amt4",                precision: 8, scale: 2
    t.decimal  "exp_amt4",                precision: 8, scale: 2
    t.string   "expense4"
    t.integer  "s_numb"
    t.integer  "s_box"
  end

  add_index "households", ["household_name"], name: "index_households_on_household_name", unique: true, using: :btree

  create_table "neighbors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.decimal  "monthly_income",          precision: 8, scale: 2
    t.decimal  "food_stamps",             precision: 8, scale: 2
    t.decimal  "rent",                    precision: 8, scale: 2
    t.decimal  "utilities",               precision: 8, scale: 2
    t.datetime "residency_date"
    t.boolean  "spouse"
    t.integer  "house_rank"
    t.datetime "open_date"
    t.datetime "close_date"
    t.string   "proof_of_residency_type"
    t.datetime "date_of_proof"
    t.boolean  "smokes"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_ssn"
    t.string   "encrypted_ssn_iv"
    t.string   "encrypted_ssn_salt"
    t.text     "notes"
    t.integer  "age"
    t.string   "sex"
    t.integer  "household_id"
    t.string   "middle_name"
    t.string   "email"
    t.string   "apt"
    t.boolean  "done"
    t.date     "birth_date"
  end

  add_index "neighbors", ["household_id"], name: "index_neighbors_on_household_id", unique: true, using: :btree
  add_index "neighbors", ["last_name"], name: "index_neighbors_name", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end