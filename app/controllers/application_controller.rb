class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_traveler!
  def after_sign_in_path_for(user)
    if current_traveler
      packs_path
    elsif current_packer
      profile_path
    end
  end
end

SIZES = [
  'XS',
  'S',
  'M',
  'L',
  'XL'
]
