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
    # Cannot book if cart is empty
    if @cart.cart_items.empty?
      flash[:alert] = "Cart is Empty!"
      redirect_to new_booking_path
      return
    end
    @booking = make_booking
    if @booking.save
      make_booking_items(@cart, @booking)
      @cart.clear_cart
      redirect_to profile_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(completed: true)
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

  def mark_as_booked(cart_item)
    cart_item.cartable.update(booked: true)
  end

  def make_booking_items(my_cart, my_booking)
    my_cart.cart_items.each do |cart_item|
      BookingItem.create!(
        booking: my_booking,
        bookable: cart_item.cartable
      )
      mark_as_booked(cart_item)
    end
  end

  def unmark_booked_items(booking)
    booking.booking_items.each do |booking_item|
      booking_item.bookable.update(booked: false)
    end
  end
end
