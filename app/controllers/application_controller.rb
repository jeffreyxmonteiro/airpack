class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_traveler!
  def after_sign_in_path_for(current_traveler)
    packs_path
  end
end
