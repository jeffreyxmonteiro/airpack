class PagesController < ApplicationController
  skip_before_action :authenticate_packer!, only: [:home]

  def home
  end
end
