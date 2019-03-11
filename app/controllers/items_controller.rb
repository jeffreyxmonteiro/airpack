class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def update
    @item = Item.find[params(:id)]
    @pack = Pack.find[params(:pack_id)]
    if @item.pack.nil?
      @item.update(pack: @pack)
    else
      @item.update(pack: nil)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to profile
  end
end
