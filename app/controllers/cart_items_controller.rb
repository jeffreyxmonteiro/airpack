class CartItemsController < ApplicationController
  def create
    CartItem.create!(
      cart: current_traveler.cart,
      cartable_type: params[:cartable_type],
      cartable_id: params[:cartable_id]
    )
    redirect_to packs_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_back(fallback_location: packs_path)
  end

  private

  def cartable_params
    params.permit(:cartable_type, :cartable_id)
  end
end
