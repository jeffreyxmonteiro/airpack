class Pack < ApplicationRecord
  has_many :cart_items, as: :cartable
  has_many :booking_items, as: :bookable
end
