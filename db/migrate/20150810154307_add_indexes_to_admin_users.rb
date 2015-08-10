class AddIndexesToAdminUsers < ActiveRecord::Migration
  def change
    add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
    add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true
  end
end
