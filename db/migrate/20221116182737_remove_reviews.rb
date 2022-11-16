class RemoveReviews < ActiveRecord::Migration[7.0]
  def change
    # remove_foreign_key :bookings, :reviews
    remove_reference :bookings, :review, null: false, foreign_key: true
  end
end
