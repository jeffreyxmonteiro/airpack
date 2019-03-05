class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def show
    @package = Package.all
  end
end
