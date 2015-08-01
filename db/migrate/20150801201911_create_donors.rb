class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
    t.string   "first_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "last_name"
    t.integer  "tools_id"
    end
  end
end
