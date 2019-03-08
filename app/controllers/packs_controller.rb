class PacksController < ApplicationController
  # skip_before_action :authenticate_traveler!, only: [:index, :show]

  def index
    @packs = Pack.all
    @cart_items = []
    @cart_items = current_traveler.cart.cart_items.map { |cart_item| cart_item.cartable } if traveler_signed_in?
    @filtered_packs = @packs.reject { |pack| @cart_items.include? pack }
  end

  def show
    @pack = Pack.find(params[:id])
  end

  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)
  end

  private

  def pack_params
    params.require(:pack).permit(:name, :style, :duration, :price, :photo_url, :description)
  end
end
