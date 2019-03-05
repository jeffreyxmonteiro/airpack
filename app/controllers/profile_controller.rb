class ProfileController < ApplicationController
  def show
    @user = current_traveler || current_packer
  end
end
