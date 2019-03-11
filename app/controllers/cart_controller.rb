class CartController < ApplicationController
  def clear
    # This clears the cart, but does not destroy it
    current_traveler.cart.clear_cart
    redirect_back(fallback_location: packs_path)
  end
end
