class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|

      t.string   "household_name"
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
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
      t.timestamps null: false
  end

  add_index "households", ["household_name"], name: "index_households_on_household_name", unique: true, using: :btree
  end
end
