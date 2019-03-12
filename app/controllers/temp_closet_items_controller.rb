class TempClosetItemsController < ApplicationController
  def create
    @item = Item.find(temp_items_params[:item])
    TempClosetItem.create!(
      item: @item,
      temp_closet: current_packer.temp_closet
    )
    redirect_back(fallback_location: new_pack_path)
  end

  def destroy
    @item = Item.find(params[:id])
    @tc_item = TempClosetItem.find_by(item: @item)
    @tc_item.destroy
    redirect_back(fallback_location: packs_path)
  end

  private

  def temp_items_params
    params.permit(:item)
  end
end
