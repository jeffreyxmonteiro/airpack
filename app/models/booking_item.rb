class BookingItem < ApplicationRecord
  belongs_to :bookable, polymorphic: true
end
