class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @traveler = current_traveler
    @booking = Booking.new
    @cart = current_traveler.cart
  end

  def create
    @cart = current_traveler.cart
    @booking = make_booking
    if @booking.save
      make_booking_items(@cart, @booking)
      clear_cart(@cart)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.completed = true
    unmark_booked_items(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    unmark_booked_items(@booking)
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:delivery_address, :delivery_date)
  end

  def make_booking
    booking = Booking.new(booking_params)
    booking.fees = 20
    booking.return_deadline = booking.delivery_date
    booking.traveler = current_traveler
    # takes packer from first item in the cart
    # will work if we assume that one booking belongs to one packer
    booking.packer = current_traveler.cart.cart_items.first.cartable.packer
    return booking
  end

  def make_booking_items(my_cart, my_booking)
    my_cart.cart_items.each do |cart_item|
      BookingItem.create!(
        booking: my_booking,
        bookable: cart_item.cartable
      )
      cart_item.cartable.booked = true
    end
  end

  def clear_cart(cart)
    cart.cart_items.each(&:destroy)
  end

  def unmark_booked_items(booking)
    booking.booking_items.each do |booking_item|
      booking_item.bookable.booked = false
    end
  end
end
