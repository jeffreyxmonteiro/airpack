class TempClosetController < ApplicationController
  def clear
    current_packer.temp_closet.clear_closet!
    redirect_back(fallback_location: packs_path)
  end
end
