class TempClosetItemsController < ApplicationController
  def create
    @item = Item.find(temp_items_params[:item])
    TempClosetItem.create!(
      item: @item,
      temp_closet: current_packer.temp_closet
    )

    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)

    respond_to do |format|
      format.html { redirect_back(fallback_location: new_pack_path) }
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @tc_item = TempClosetItem.find_by(item: @item)
    @tc_item.destroy

    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)

    respond_to do |format|
      format.html { redirect_back(fallback_location: packs_path) }
      format.js { render 'create' }
    end
  end

  private

  def temp_items_params
    params.permit(:item)
  end
end
