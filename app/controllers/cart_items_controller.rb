class CartItemsController < ApplicationController
  def create
    # Needs an Object
    CartItem.create!(
      cart: current_traveler.cart,
      cartable: @pack || @item # item or pack
    )
    redirect_to packs_show_path
  end

  def destroy
    @cart_item = cart_item
    @cart_item.destroy
    redirect_to packs_show_path
  end
end
