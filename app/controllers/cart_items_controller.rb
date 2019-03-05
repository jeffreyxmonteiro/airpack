class CartItemsController < ApplicationController
  def create
    # Needs an Object
    CartItem.create!(
      cart: current_traveler.cart,
      cartable: params[:item] || params[:pack] # item or pack
      )
  end
end
