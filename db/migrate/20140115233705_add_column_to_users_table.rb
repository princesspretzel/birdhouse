class AddColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column :users_tables, :facebook_username, :string
    add_column :users_tables, :flag, :integer, default: 0
  end
end
