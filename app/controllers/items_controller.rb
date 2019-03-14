class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.packer = current_packer
    if @item.save
      redirect_to closet_profile_path
    else
      render :new
    end
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
    @item.destroy if current_packer == @item.packer
    redirect_to closet_profile_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :style, :size, :price, :description, :photo)
  end
end
