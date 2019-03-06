class BookingsController < ApplicationController
  skip_before_action :authenticate_traveler!, only: [:new, :create]

  def new
    @traveler = current_traveler
    @booking = Booking.new
  end

  def create
  end
end
