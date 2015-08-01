class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "group"
    t.string   "cell_phone"
    t.datetime "birthday"
    t.string   "nick_name"
    t.string   "skills"
    t.string   "contact"
    t.string   "notes"
    t.boolean  "admin"
    end
  end
end
