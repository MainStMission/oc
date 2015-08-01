class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
    t.integer  "donor_id"
    t.decimal  "weight"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    end
  end
end
