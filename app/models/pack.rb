class Pack < ApplicationRecord
  belongs_to :packer
  has_many :items
  has_many :cart_items, as: :cartable
  has_many :booking_items, as: :bookable

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

  def clear_pack!
    items.clear
  end

  def top_count
    return items.where(category: "Top").count
  end

  def bottom_count
    return items.where(category: "Bottom").count
  end

  def misc_count
    return items.where("category not in (?)", %w[Top Bottom]).count
  end
end
