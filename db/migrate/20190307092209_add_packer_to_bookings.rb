class AddPackerToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :packer, foreign_key: true
  end
end
