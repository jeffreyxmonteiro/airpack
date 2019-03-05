class PackagesController < ApplicationController
  def index
    @packs = Pack.all
  end

  def show
    @package = Package.all
  end
end
