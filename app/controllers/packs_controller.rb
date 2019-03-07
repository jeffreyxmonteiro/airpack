class PacksController < ApplicationController
  skip_before_action :authenticate_traveler!, only: [:index, :show]

  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.find(params[:id])
  end
end
