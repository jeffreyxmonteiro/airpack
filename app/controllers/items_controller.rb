class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def delete
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to profile
  end
end
