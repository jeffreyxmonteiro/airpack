class AddDefaultValueCompletedToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :completed, :boolean, default: false
  end
end
