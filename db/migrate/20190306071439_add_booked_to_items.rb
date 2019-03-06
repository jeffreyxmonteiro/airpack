class AddBookedToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :booked, :boolean, default: false
  end
end
