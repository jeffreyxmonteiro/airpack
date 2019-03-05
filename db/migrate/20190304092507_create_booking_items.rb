class CreateBookingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_items do |t|
      t.string :bookable_type
      t.string :bookable_id
      t.references :booking

      t.timestamps
    end
  end
end
