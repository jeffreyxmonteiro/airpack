class ItemsController < ApplicationController
  def add
    @item = Item.new
  end

  def delete
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to profile
  end
end
