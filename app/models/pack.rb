class Pack < ApplicationRecord
  belongs_to :packer
  has_many :items
  has_many :cart_items, as: :cartable
  has_many :booking_items, as: :bookable

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

  def clear_pack
    items.each do |item|
      items.delete(item)
    end
  end
end
