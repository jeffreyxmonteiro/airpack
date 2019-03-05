class Booking < ApplicationRecord
  belongs_to :traveler
  has_many :booking_items
end
