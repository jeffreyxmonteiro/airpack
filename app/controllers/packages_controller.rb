class PackagesController < ApplicationController
  def index
    @pack = Pack.all
  end

  def show
    @package = Package.all
  end
end
