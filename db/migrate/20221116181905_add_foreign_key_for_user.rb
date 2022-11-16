class AddForeignKeyForUser < ActiveRecord::Migration[7.0]
  def change
    # add_reference :bookings, :user
    add_foreign_key :bookings, :users
  end
end
