class PacksController < ApplicationController
  # skip_before_action :authenticate_traveler!, only: [:index, :show]

  def index
    pack_search
    @cart_items = []
    @cart_items = current_traveler.cart.cart_items.map(&:cartable) if traveler_signed_in?
    @filtered_packs = @packs.reject { |pack| @cart_items.include? pack }
  end

  def show
    @pack = Pack.find(params[:id])
  end

  def new
    @items = Item.all
    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)
    @filtered_items = @items.select { |item| item.packer == current_packer && item.pack_id.nil?}
    @pack = Pack.new
  end

  def create
    @closet = current_packer.temp_closet
    @pack = Pack.new(pack_params)
    @pack.packer = current_packer
    if @pack.save
      add_item_to_pack(@closet)
      @closet.clear_closet
      redirect_to pack_path(@pack)
    else
      render :new
    end
  end

  def edit
    current_packer.temp_closet.clear_closet
    @pack = Pack.find(params[:id])
    @pack.items.each do |item|
      current_packer.temp_closet.temp_closet_items.create!(item: item)
      # TempClosetItem.create!(
      #   item: item,
      #   temp_closet: current_packer.temp_closet
      # )
    end
    @filtered_items = Item.all.select do |item|
      item.packer == current_packer && (item.pack.nil? || item.pack == @pack)
    end
    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)
  end

  def update
    @tempcloset = current_packer.temp_closet

    @pack = Pack.find(params[:id])

    if @pack.update(pack_params)
      @pack.clear_pack!
      add_item_to_pack(@tempcloset)

      @tempcloset.clear_closet

      redirect_to pack_path(@pack)
    else
      render :new
    end
  end

  def delete
    @pack = Pack.find(params[:id])
    @pack.destroy
    redirect_to profile_path
  end

  private

  def search_params
    params.permit(:size, :style)
  end

  def pack_params
    params.require(:pack).permit(:name, :style, :size, :duration, :price, :description, :photo)
  end

  def pack_search
    if params[:size].present? && params[:style].present?
      @packs = Pack.where(size: search_params[:size], style: search_params[:style])
    elsif params[:size].present?
      @packs = Pack.where(size: search_params[:size])
    elsif params[:style].present?
      @packs = Pack.where(style: search_params[:style])
    else
      @packs = Pack.all
    end
  end

  def add_item_to_pack(closet)
    pack_items = closet.temp_closet_items.map(&:item)
    pack_items.each { |item| item.update(pack: @pack) }
  end
end
