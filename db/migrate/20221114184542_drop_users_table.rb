class DropUsersTable < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :bookings, :users
    drop_table :users
  end
end
