class Booking < ApplicationRecord
  belongs_to :review
  belongs_to :quad
  belong_to :user
end
