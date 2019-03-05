class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @traveler = current_user
    @booking = Booking.new
  end

  def create
  end
end
