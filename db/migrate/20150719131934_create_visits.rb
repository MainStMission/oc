class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer  "neighbor_id"
      t.date     "visited_on",     null: false
      t.text     "items_received"
      t.text     "notes"
      t.datetime "created_at",     null: false
      t.datetime "updated_at",     null: false
      t.integer  "household_id"
      t.string   "starch"
      t.string   "cereal"
      t.string   "option1"
      t.string   "option2"
      t.boolean  "optionb"
      t.timestamps null: false
    end
    add_index "visits", ["household_id"], name: "index_visits_on_household_id", using: :btree
    add_index "visits", ["visited_on"], name: "index_visits_on_visited_on", using: :btree
  end
end
