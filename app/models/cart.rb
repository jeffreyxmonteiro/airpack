class Cart < ApplicationRecord
  belongs_to :traveler
  has_many :cart_items

  def clear_cart
    cart_items.each(&:destroy)
  end

  def cost
    cart_objects = cart_items.map(&:cartable)
    return cart_objects.map(&:price).sum
  end
end
