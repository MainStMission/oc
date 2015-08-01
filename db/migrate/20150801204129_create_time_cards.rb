class CreateTimeCards < ActiveRecord::Migration
  def change
    create_table :time_cards do |t|
    t.integer  "volunteer_id"
    t.datetime "start_time"
    t.datetime "end_time"
    end
  end
end
