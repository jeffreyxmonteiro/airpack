class SearchController < ApplicationController
  def create
    @search = Search.new(search_params)
    redirect_to packs_path(size: search_params[:size], style: search_params[:style])
  end

  private

  def search_params
    params.require(:search).permit(:size, :style)
  end
end
