class AddLocationAndDatesToSearch < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :date, :string
    add_column :searches, :location, :string
  end
end
