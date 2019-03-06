class AddBookedToPacks < ActiveRecord::Migration[5.2]
  def change
    add_column :packs, :booked, :boolean, default: false
  end
end
