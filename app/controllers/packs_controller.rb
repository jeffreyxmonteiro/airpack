class PacksController < ApplicationController
  # skip_before_action :authenticate_traveler!, only: [:index, :show]

  def index
    @packs = Pack.all
    @items = Item.all
    # If item exists in cart only items/packs from that user is shown
    cart_item_check if traveler_signed_in?
    pack_item_search
    # This line is to cover cases where traveler is not logged in (otherwise @cart_items is nil)
    @cart_items = []
    @cart_items = current_traveler.cart.cart_items.map(&:cartable) if traveler_signed_in?

    @filtered_packs = @packs.reject { |pack| @cart_items.include? pack }.select { |p| p.booked == false }
    @filtered_items = @items.reject { |item| @cart_items.include? item }.select { |i| i.pack.nil? }

    empty_messages if @filtered_packs.empty?
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
    @items = Item.all
    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)
    @filtered_items = @items.select { |item| item.packer == current_packer && item.pack_id.nil?}
    @closet = current_packer.temp_closet
    @pack = Pack.new(pack_params)
    @pack.packer = current_packer
    if @pack.save
      add_item_to_pack(@closet)
      @closet.clear_closet!
      redirect_to pack_path(@pack)
    else
      render :new
    end
  end

  def create_quick_pack
    @items = Item.all
    @packs = Pack.all
    @closet = current_packer.temp_closet
    @closet.clear_closet!
    @tempcloset = current_packer.temp_closet.temp_closet_items.map(&:item)
    @filtered_items = @items.select { |item| item.packer == current_packer && item.pack_id.nil?}
    pack_item_search
    # Filter Tops and Bottoms
    tops = @items.where(category: "Top").where(packer: current_packer).select { |item| item.pack_id.nil? }
    bottoms = @items.where(category: "Bottom").where(packer: current_packer).select { |item| item.pack_id.nil? }

    # Create Items
    tops.first(params[:duration].to_i).each do |top|
      TempClosetItem.create!(
        item: top,
        temp_closet: @closet
      )
    end

    bottoms.first(params[:duration].to_i).each do |bottom|
      TempClosetItem.create!(
        item: bottom,
        temp_closet: @closet
      )
    end

    @pack = Pack.new(
      name: "#{current_packer.first_name}'s #{params[:style]} Pack",
      style: params[:style] || tops.first.style,
      size: params[:size] || tops.first.size,
      price: 3000 * params[:duration].to_i,
      description: "A selection of #{params[:style]} clothing from #{current_packer.first_name}'s selection"
      )
    # @pack.packer = current_packer
    # if @pack.save
    #   add_item_to_pack(@closet)
    #   @closet.clear_closet!
    #   redirect_to pack_path(@pack)
    # else

    @pack.remote_photo_url = "https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    render :new
    # end

    # redirect_to new_pack_path
  end

  def edit
    current_packer.temp_closet.clear_closet!
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

      @tempcloset.clear_closet!

      redirect_to pack_path(@pack)
    else
      render :new
    end
  end

  def destroy
    @pack = Pack.find(params[:id])
    if current_packer == @pack.packer
      @pack.clear_pack!
      @pack.destroy
    end
    redirect_to closet_profile_path
  end

  private

  def search_params
    params.permit(:size, :style, :duration)
  end

  def pack_params
    params.require(:pack).permit(:name, :style, :size, :duration, :price, :description, :photo)
  end

  def cart_item_check
    if current_traveler.cart.cart_items.empty?
      @packs = Pack.all
      @items = Item.all
    else
      # Finds packer of the first item
      @packer = current_traveler.cart.cart_items.first.cartable.packer
      @packs = Pack.where(packer: @packer)
      @items = Item.where(packer: @packer)
    end
  end

  def pack_item_search
    if params[:size].present? && params[:style].present?
      @packs = @packs.where(size: search_params[:size], style: search_params[:style])
      @items = @items.where(size: search_params[:size], style: search_params[:style])
    elsif params[:size].present?
      @packs = @packs.where(size: search_params[:size])
      @items = @items.where(size: search_params[:size])
    elsif params[:style].present?
      @packs = @packs.where(style: search_params[:style])
      @items = @items.where(style: search_params[:style])
    end
  end

  def empty_messages
    if @packer.nil? && search_params.empty?
      @pack_message = "There are currently no available packs"
    elsif @packer.nil?
      @pack_message = "No results match your search"
    else
      @pack_message = "#{@packer.fullname} does not have any other bookable packs"
    end
  end

  def add_item_to_pack(closet)
    pack_items = closet.temp_closet_items.map(&:item)
    pack_items.each { |item| item.update(pack: @pack) }
  end
end
