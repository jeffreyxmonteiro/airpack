class Item < ApplicationRecord
  belongs_to :pack_id
  belongs_to :packer_id
  has_many :cart_items, as: :cartable
  has_many :booking_items, as: :bookable
end
