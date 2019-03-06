class AddBookingDaysToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_days, :integer
  end
end
