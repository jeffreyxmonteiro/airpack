class CartItemsController < ApplicationController
  def create
    # Needs an Object
    CartItem.create!(
      cart: current_user.cart,
      cartable: self # item or pack
      )
  end
end
