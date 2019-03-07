class PagesController < ApplicationController
  # skip_before_action :authenticate_traveler!, only: [:home]

  def home
    @pack = Pack.new
  end
end
