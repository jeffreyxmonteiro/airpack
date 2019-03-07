class PacksController < ApplicationController
  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.find(params[:id])
  end

  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)
    @pack.style
    @pack.size
  end

  private

  def pack_params
    params.require(:pack).permit(:name, :style, :duration, :price, :photo_url, :description)
  end
end
