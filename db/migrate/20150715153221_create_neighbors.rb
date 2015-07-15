class CreateNeighbors < ActiveRecord::Migration
  def change
    create_table :neighbors do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "street"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
      t.string   "phone"
      t.decimal  "monthly_income",         precision: 8, scale: 2
      t.decimal  "food_stamps",            precision: 8, scale: 2
      t.decimal  "rent",                   precision: 8, scale: 2
      t.decimal  "utilities",              precision: 8, scale: 2
      t.datetime "residency_date"
      t.boolean  "spouse"
      t.integer  "house_rank"
      t.datetime "open_date"
      t.datetime "close_date"
      t.string   "proof_of_residency_type"
      t.datetime "date_of_proof"
      t.boolean  "smokes"
      t.datetime "created_at",             null: false
      t.datetime "updated_at",             null: false
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

      t.timestamps null: false
    end
  add_index "neighbors", ["last_name"], name: "index_neighbors_name", unique: true, using: :btree
  add_index "neighbors", ["household_id"], name: "index_neighbors_on_household_id", unique: true, using: :btree
  end
end
