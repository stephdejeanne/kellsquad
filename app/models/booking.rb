class Booking < ApplicationRecord
  belongs_to :quad
  belongs_to :user
end
