class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :fees
      t.string :delivery_address
      t.string :delivery_date
      t.string :return_deadline
      t.string :completed
      t.references :traveller, foreign_key: true

      t.timestamps
    end
  end
end
