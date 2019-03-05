class CartController < ApplicationController
  def create
    Cart.new(user: current_user)
  end

  def update
    @cart = Cart.find(current_user)
    @cart.cart_items.each do |cart_item|
      cart_item.destroy
    end
  end
end
