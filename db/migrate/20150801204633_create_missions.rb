class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
    t.string   "title"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    end
  end
end
