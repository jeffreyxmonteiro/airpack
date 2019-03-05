class PackagesController < ApplicationController
  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.all
  end
end
