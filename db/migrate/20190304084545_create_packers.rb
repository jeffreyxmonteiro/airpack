class CreatePackers < ActiveRecord::Migration[5.2]
  def change
    create_table :packers do |t|
      t.string :first_name
      t.string :last_name
      t.string :biography
      t.string :location
      t.string :photo_url

      t.timestamps
    end
  end
end
