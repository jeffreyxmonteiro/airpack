class Cart < ApplicationRecord
  belongs_to :traveler
  has_many :cart_items

  def clear_cart
    cart_items.each(&:destroy)
  end
end
