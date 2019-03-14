class PaymentsController < ApplicationController
  before_action :set_booking

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email: params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id, # You should store this customer id and re-use it.
      amount:       @booking.cost,
      description:  "Payment for airPack Booking:#{@booking.id}",
      currency:     "JPY"
    )

    @booking.update(payment: charge.to_json, state: 'Paid')
    redirect_to profile_path

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to profile_path
  end

  private

  def set_booking
    @booking = current_traveler.bookings.where(state: 'Pending').find(params[:booking_id])
  end
end
