class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :fees
      t.string :delivery_address
      t.string :delivery_date
      t.string :return_deadline
      t.boolean :completed
      t.references :traveler, foreign_key: true

      t.timestamps
    end
  end
end
