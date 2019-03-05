class CartItemsController < ApplicationController
  def create
    # Needs an Object
    CartItem.create!(
      cart: current_user.cart,
      cartable: params[:item] || params[:pack] # item or pack
      )
  end
end
