class CartController < ApplicationController
  def update
    @cart = Cart.find(current_traveler)
    @cart.cart_items.each(&:destroy)
  end

  def clear
    # This clears the cart, but does not destroy it
    current_traveler.cart.cart_items.each(&:destroy)
    redirect_back(fallback_location: packs_path)
  end
end
