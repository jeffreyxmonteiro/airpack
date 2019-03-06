class CartController < ApplicationController
  def update
    @cart = Cart.find(current_traveler)
    @cart.cart_items.each(&:destroy)
  end
end
