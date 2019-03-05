class Pack < ApplicationRecord
  belongs_to :packer
  has_many :cart_items, as: :cartable
  has_many :booking_items, as: :bookable
end
