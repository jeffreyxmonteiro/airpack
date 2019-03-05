class BookingItem < ApplicationRecord
  belongs_to :booking
  belongs_to :bookable, polymorphic: true
end
