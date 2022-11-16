class BookingAddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start, :datetime
    add_column :bookings, :end, :datetime
  end
end
