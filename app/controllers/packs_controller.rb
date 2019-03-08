class PacksController < ApplicationController
  # skip_before_action :authenticate_traveler!, only: [:index, :show]

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
  end

  private

  def pack_params
    params.require(:pack).permit(:name, :style, :duration, :price, :photo_url, :description)
  end
end
