class Booking < ApplicationRecord
  belongs_to :traveler
  belongs_to :packer
  has_many :booking_items
end
