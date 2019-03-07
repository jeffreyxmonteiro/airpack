class ProfilesController < ApplicationController
  def show
    @user = current_traveler || current_packer
  end

  def closet
    @user = current_traveler || current_packer
  end
end
